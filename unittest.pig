a = LOAD 'unittest.json' USING JsonLoader('a0:int,a1:{(a10:int,a11:chararray)},a2:(a20:double,a21:bytearray),a3:[chararray]');
DESCRIBE a;
DUMP a;