<p align="center">
<img src="https://i.imgur.com/MHFEVV5.png">
</p>

<hr/>

# What is this?

The **Roblox Client Tracker** is an unofficial repository that aims to provide detailed diff logs for changes to Roblox's engine.
It generates information by data mining files retrieved from Roblox's deployment servers. The information that is mined and presented in this repository is retrieved using publicly disclosed end-points.

# Comparison Links
Use these links to compare versions of Roblox's client.

* Compare [roblox->sitetest1](https://github.com/CloneTrooper1019/Roblox-Client-Tracker/compare/sitetest1.robloxlabs#files_bucket)
* Compare [roblox->sitetest2](https://github.com/CloneTrooper1019/Roblox-Client-Tracker/compare/sitetest2.robloxlabs#files_bucket)
* Compare [sitetest1->sitetest2](https://github.com/CloneTrooper1019/Roblox-Client-Tracker/compare/sitetest1.robloxlabs...sitetest2.robloxlabs)

# Some Specifications

## API-Dump.json
This is a JSON version of Roblox's API Dump. It contains more data than the original API Dump and can be read into a data tree by most programming languages using a JSON parser.
This file is extracted using RobloxStudioBeta.exe -API API-Dump.json

## API-Dump.txt
A readable version of Roblox's JSON API Dump. This file is generated from the [Roblox API Dump Tool](https://github.com/CloneTrooper1019/Roblox-API-Dump-Tool).

## AutoCompleteMetadata.xml
A file used by Roblox Studio to provide auto completion for the types built into Roblox's Lua implementation.

## CppTree.txt
A *very-rough* hierarchical dump of the C++ class/enum type names that could be extracted from the symbol data of Roblox Studio's exe.

## DeepStrings.txt
This is a sorted list of dumped strings from Roblox Studio's exe. There is *some* garbage data dumped into this file, but most of it should be legible.

## EmulatedDevices.xml
A file used by Roblox Studio which defines the specifications, platforms, and images for all default emulation devices.

## FVariables.txt
This is a sorted list of fast variables, which are used by Roblox to toggle changes to the engine remotely on multiple platforms without having to redeploy the client.

## RobloxShaderData.csv
This CSV maps all of Roblox's known shaders, and which graphics APIs use them. Each mapped shader has a mapped name and shader-type.

## rbxManifest.txt
A file that describes (almost) every file that is expected to be extracted from the zip files specified in rbxPkgManifest.txt
Every two lines of this file corresponds to a local file path, and the MD5 signature expected of the file extracted to that path.
Note that although most paths are relative to the root directory, some of them aren't (specifically, the files in Plugins/ and Qml/)

## rbxPkgManifest.txt
A file that describes the zip files that should be fetched from Roblox's setup servers when assembling Roblox Studio.
The file starts with a line describing the version for the package manifest schema.

After the version, information about each file is listed sequentually as such:
```
FileName.ext
MD5 Signature
Compressed Size
Decompressed Size
```

These files are fetched from Roblox's servers via:
`http://setup.{roblox}.com/{version-guid}-{FileName.ext}`<br/>
(or `https://s3.amazonaws.com/setup.{roblox}.com/{version-guid}-{FileName.ext}`)
Note that `{roblox}` switches out with either `roblox`, `gametest1.robloxlabs` or `gametest2.robloxlabs`.

## rbxManifest.csv
A CSV version of `rbxManifest.txt`, made to be easier to read from GitHub.

## rbxPkgManifest.csv
A CSV version of `rbxPkgManifest.txt`, made to be easier to read from GitHub.

## version.txt
Describes the current version of Roblox Studio. Formatted as: **(MajorRevision).(Version).(Patch).(Commit)**

## version-guid.txt
Describes the current GUID version of Roblox Studio.
