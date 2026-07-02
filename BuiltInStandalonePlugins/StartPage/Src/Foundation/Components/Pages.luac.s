MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R1 R1 K9 ["StudioService"]
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Util"]
       24 GETTABLEKS                       R3 R3 K8 ["Services"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R2 R2 K10 ["StudioUserService"]
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K6 ["Src"]
       33 GETTABLEKS                       R4 R4 K11 ["Types"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R4 R0 K6 ["Src"]
       38 GETTABLEKS                       R4 R4 K12 ["Components"]
       40 GETTABLEKS                       R5 R0 K6 ["Src"]
       42 GETTABLEKS                       R5 R5 K13 ["Foundation"]
       44 GETTABLEKS                       R5 R5 K12 ["Components"]
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R5 K14 ["HomePage"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R5 K15 ["ExperiencesPage"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R5 K16 ["TemplatesPage"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R5 K17 ["ArchivePage"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R5 K18 ["RecentsPage"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K5 [require]
       73 GETTABLEKS                       R12 R0 K6 ["Src"]
       75 GETTABLEKS                       R12 R12 K19 ["SharedFlags"]
       77 GETTABLEKS                       R12 R12 K20 ["getFFlagLuaStartPageStudioTestTemplates"]
       79 CALL                             R11 1 1
       80 CALL                             R11 0 1
       81 JUMPIFNOT                        R11 ; [+13]
       82 GETTABLEKS                       R13 R2 K21 ["IsLoggedIn"]
       84 JUMPIFNOT                        R13 ; [+10]
       85 NAMECALL                         R13 R1 K22 ["HasInternalPermission"]
       87 CALL                             R13 1 1
       88 JUMPIFNOT                        R13 ; [+6]
       89 GETIMPORT                        R12 K5 [require]
       91 GETTABLEKS                       R13 R4 K23 ["TestTemplatesPage"]
       93 CALL                             R12 1 1
       94 JUMP                             ; [+1]
       95 LOADNIL                          R12
       96 NEWTABLE                         R13 0 5
       98 DUPTABLE                         R14 K31 [{["TextKey"] = "PageMenu.Recents", ["PageComponent"], ["Icon"] = "rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Recent.png", ["ActiveIcon"] = "rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/RecentFilled.png"}]
       99 SETTABLEKS                       R10 R14 K26 ["PageComponent"]
      101 DUPTABLE                         R15 K35 [{["TextKey"] = "PageMenu.Home", ["PageComponent"], ["Icon"] = "rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Home.png", ["ActiveIcon"] = "rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/HomeFilled.png"}]
      102 SETTABLEKS                       R6 R15 K26 ["PageComponent"]
      104 DUPTABLE                         R16 K39 [{["TextKey"] = "PageMenu.Experiences", ["PageComponent"], ["Icon"] = "rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Experience.png", ["ActiveIcon"] = "rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/ExperienceFilled.png"}]
      105 SETTABLEKS                       R7 R16 K26 ["PageComponent"]
      107 DUPTABLE                         R17 K43 [{["TextKey"] = "PageMenu.Templates", ["PageComponent"], ["Icon"] = "rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Template.png", ["ActiveIcon"] = "rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/TemplateFill.png"}]
      108 SETTABLEKS                       R8 R17 K26 ["PageComponent"]
      110 DUPTABLE                         R18 K47 [{["TextKey"] = "PageMenu.Archive", ["PageComponent"], ["Icon"] = "rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Archive.png", ["ActiveIcon"] = "rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/ArchiveFilled.png"}]
      111 SETTABLEKS                       R9 R18 K26 ["PageComponent"]
      113 SETLIST                          R13 R14 5 [1]
      115 JUMPIFNOT                        R12 ; [+9]
      116 DUPTABLE                         R16 K50 [{["TextKey"] = "PageMenu.TestTemplates", ["PageComponent"], ["Icon"] = "rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Medium/RibbonCodeSnippet.png", ["ActiveIcon"] = "rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Medium/RibbonCodeSnippet.png"}]
      117 SETTABLEKS                       R12 R16 K26 ["PageComponent"]
      119 FASTCALL2                        TABLE_INSERT R13 R16 ; [+4]
      121 MOVE                             R15 R13
      122 GETIMPORT                        R14 K53 [table.insert]
      124 CALL                             R14 2 0
      125 RETURN                           R13 1
