a = LOAD 'arraysOfObjects.json' USING JsonLoader('array:{(key:CHARARRAY)}');
DESCRIBE a;
DUMP a;