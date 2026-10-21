MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPTABLE                         R1 K8 [{[1] = "Image", ["Scene"] = "Scene", ["Audio"] = "Audio", ["Video"] = "Video", ["Text"] = "Text", ["AnimatedImage"] = "AnimatedImage", ["None"] = ""}]
        4 SETTABLEKS                       R1 R0 K9 ["FileType"]
        6 DUPTABLE                         R2 K18 [{["ModerationError"] = "Asset name and description is fully moderated.", ["AssetDependencyError"] = "DependenciesLimitExceeded", ["ImageResolutionError"] = "Image resolution is too high.", ["CorruptedFile"] = "Corrupted"}]
        7 SETTABLEKS                       R2 R0 K19 ["ErrorCode"]
        9 DUPTABLE                         R3 K22 [{["Error"] = "Error", ["Warning"] = "Warning"}]
       10 SETTABLEKS                       R3 R0 K23 ["StatusLevel"]
       12 DUPTABLE                         R4 K29 [{["Parsing"] = "Parsing", ["Parsed"] = "Parsed", ["Importing"] = "Importing", ["Imported"] = "Imported", ["Invalid"] = "Invalid"}]
       13 SETTABLEKS                       R4 R0 K30 ["SessionState"]
       15 DUPTABLE                         R5 K34 [{["Waiting"] = "Waiting", ["Succeeded"] = "Succeeded", ["Failed"] = "Failed"}]
       16 SETTABLEKS                       R5 R0 K35 ["UploadRequestStatus"]
       18 RETURN                           R0 1
