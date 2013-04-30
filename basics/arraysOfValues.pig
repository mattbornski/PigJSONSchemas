a = LOAD 'arraysOfValues.json' USING JsonLoader('array:[]');
DESCRIBE a;
DUMP a;