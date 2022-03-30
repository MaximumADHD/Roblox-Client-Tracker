#!/usr/bin/env python
import sys
import fileinput

def updateRotrieverTomlVersion(correctVersion):
	try:
		for line in fileinput.input("rotriever.toml", inplace=1):
			if "version = " in line:
				line = line.replace(line, "version = \"%s\"\n" % (correctVersion))
			sys.stdout.write(line)
	except:
		print('Exception: Could not read rotriever.toml file.')

def writeToVersionFile(tomlVersion, masterHash):
	try:
		with open('src/Version.lua', 'w+') as f:
			line = "return { '%s', '%s' }\n" % (tomlVersion, masterHash)
			line = line.replace("'", '"')
			f.write(line)
	except:
		print('Exception: Master hash was not provided as argument.')

if __name__ == "__main__":
	try:
		tomlVersion, masterHash = sys.argv[1], sys.argv[2][:7]
		if tomlVersion[0] == 'v':
			tomlVersion = tomlVersion[1:]
	except:
		print('Exception: Arguments were not given: <rotriever version> <master hash>.')
	updateRotrieverTomlVersion(tomlVersion)
	writeToVersionFile(tomlVersion, masterHash)
