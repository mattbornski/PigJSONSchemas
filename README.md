PigJSONSchemas
==============

Puzzling out how to describe JSON structure to the Pig 0.10.0 built-in JSONLoader

Here is the extant documentation I can find:
http://pig.apache.org/docs/r0.10.0/api/org/apache/pig/builtin/JsonLoader.html

That's nearly useless.  On the other hand, here's the unit test for JsonStorage:
http://svn.apache.org/repos/asf/pig/trunk/test/org/apache/pig/test/TestJsonLoaderStorage.java
http://svn.apache.org/repos/asf/pig/trunk/test/org/apache/pig/test/data/jsonStorage1.result#

Now we're getting somewhere!  Of course, the unit test only covers a portion of possible JSON structure.  I'll use the unit test as my starting point, and pair up JSON documents with the Pig schemas required to use them.  It will illustrate just how JSON structure translates to Pig schema, and hopefully make me much better at Pig along the way.

General guidelines
------------------

Pig's JsonLoader function believes that all records should be contained in a JSON Object on a single line.  This makes sense to me and is how all of my records are already formatted, but I'm laying it out for you quite clearly: all records are contained in a single top level JSON object on a single line.

This is valid:
```json
{"foo":"bar","baz":[1,2,3]}
```

So is this:
```json
{"foo": "bar", "baz": [1, 2, 3]}
```

This is not:
```json
["foo", "bar", {"baz": [1, 2, 3]}]
```

Neither is this:
```json
{
  "foo": "bar",
  "baz": [1, 2, 3]
}
```