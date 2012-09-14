PigJSONSchemas
==============

Puzzling out how to describe JSON structure to the Pig 0.10.0 built-in JSONLoader

Here is the extant documentation I can find:
http://pig.apache.org/docs/r0.10.0/api/org/apache/pig/builtin/JsonLoader.html

That's nearly useless.  On the other hand, here's the unit test for JsonStorage:
http://svn.apache.org/repos/asf/pig/trunk/test/org/apache/pig/test/TestJsonLoaderStorage.java
http://svn.apache.org/repos/asf/pig/trunk/test/org/apache/pig/test/data/jsonStorage1.result#

Now we're getting somewhere!  Of course, the unit test only covers a portion of possible JSON structure.  I'll use the unit test as my starting point, and pair up JSON documents with the Pig schemas required to use them.  It will illustrate just how JSON structure translates to Pig schema, and hopefully make me much better at Pig along the way.