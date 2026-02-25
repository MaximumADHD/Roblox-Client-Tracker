PROTO_0:
        0 GETIMPORT                        R1 K1 [plugin]
        2 LOADK                            R3 K2 ["DmChanged"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R1 R1 K3 ["Invoke"]
        6 CALL                             R1 3 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["Ribbon"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [game]
       13 LOADK                            R3 K8 ["DebugEnableRibbonStorybook"]
       14 LOADB                            R4 0
       15 NAMECALL                         R1 R1 K9 ["DefineFastFlag"]
       17 CALL                             R1 3 1
       18 GETIMPORT                        R2 K11 [require]
       20 GETTABLEKS                       R5 R0 K12 ["Src"]
       22 GETTABLEKS                       R4 R5 K13 ["SharedFlags"]
       24 GETTABLEKS                       R3 R4 K14 ["getFFlagDebugEnableFoundationInspector"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R4 R0 K15 ["Bin"]
       29 GETTABLEKS                       R3 R4 K16 ["Common"]
       31 GETIMPORT                        R4 K11 [require]
       33 GETTABLEKS                       R5 R3 K17 ["defineLuaFlags"]
       35 CALL                             R4 1 0
       36 GETIMPORT                        R4 K11 [require]
       38 GETTABLEKS                       R6 R0 K18 ["Packages"]
       40 GETTABLEKS                       R5 R6 K19 ["TestLoader"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R4 K20 ["launch"]
       45 LOADK                            R6 K4 ["Ribbon"]
       46 GETTABLEKS                       R7 R0 K12 ["Src"]
       48 CALL                             R5 2 0
       49 GETTABLEKS                       R5 R4 K21 ["isCli"]
       51 CALL                             R5 0 1
       52 JUMPIFNOT                        R5 ; [+1]
       53 RETURN                           R0 0
       54 GETIMPORT                        R6 K1 [plugin]
       56 GETTABLEKS                       R5 R6 K22 ["MultipleDocumentInterfaceInstance"]
       58 GETTABLEKS                       R6 R5 K23 ["FocusedDataModelSession"]
       60 GETTABLEKS                       R7 R6 K24 ["CurrentDataModelTypeAboutToChange"]
       62 DUPCLOSURE                       R9 K25 [PROTO_0]
       63 NAMECALL                         R7 R7 K26 ["Connect"]
       65 CALL                             R7 2 0
       66 GETTABLEKS                       R7 R6 K27 ["CurrentDataModelType"]
       68 GETIMPORT                        R8 K31 [Enum.StudioDataModelType.Edit]
       70 JUMPIFNOTEQ                      R7 R8 ; [+17]
       72 GETIMPORT                        R7 K11 [require]
       74 GETTABLEKS                       R11 R0 K12 ["Src"]
       76 GETTABLEKS                       R10 R11 K32 ["Util"]
       78 GETTABLEKS                       R9 R10 K33 ["SocialPresence"]
       80 GETTABLEKS                       R8 R9 K34 ["SocialPresenceDmBridge"]
       82 CALL                             R7 1 1
       83 GETTABLEKS                       R8 R7 K35 ["initAssetDm"]
       85 GETIMPORT                        R9 K1 [plugin]
       87 CALL                             R8 1 0
       88 GETIMPORT                        R7 K1 [plugin]
       90 LOADK                            R9 K36 ["DmChanged"]
       91 GETTABLEKS                       R10 R6 K27 ["CurrentDataModelType"]
       93 NAMECALL                         R7 R7 K37 ["Invoke"]
       95 CALL                             R7 3 0
       96 GETIMPORT                        R7 K7 [game]
       98 LOADK                            R9 K38 ["StudioService"]
       99 NAMECALL                         R7 R7 K39 ["GetService"]
      101 CALL                             R7 2 1
      102 NAMECALL                         R7 R7 K40 ["HasInternalPermission"]
      104 CALL                             R7 1 1
      105 JUMPIF                           R7 ; [+1]
      106 RETURN                           R0 0
      107 MOVE                             R8 R2
      108 CALL                             R8 0 1
      109 JUMPIFNOT                        R8 ; [+24]
      110 GETIMPORT                        R8 K7 [game]
      112 LOADK                            R10 K41 ["RobloxPluginGuiService"]
      113 NAMECALL                         R8 R8 K39 ["GetService"]
      115 CALL                             R8 2 1
      116 GETIMPORT                        R9 K11 [require]
      118 GETTABLEKS                       R11 R0 K12 ["Src"]
      120 GETTABLEKS                       R10 R11 K42 ["FoundationInspector"]
      122 CALL                             R9 1 1
      123 GETTABLEKS                       R10 R9 K43 ["watchDockWidgets"]
      125 GETIMPORT                        R11 K1 [plugin]
      127 MOVE                             R12 R8
      128 CALL                             R10 2 0
      129 GETTABLEKS                       R10 R9 K44 ["watchEnabledState"]
      131 GETIMPORT                        R11 K1 [plugin]
      133 CALL                             R10 1 0
      134 JUMPIFNOT                        R1 ; [+42]
      135 GETIMPORT                        R8 K7 [game]
      137 LOADK                            R10 K45 ["ReplicatedStorage"]
      138 NAMECALL                         R8 R8 K39 ["GetService"]
      140 CALL                             R8 2 1
      141 LOADK                            R11 K4 ["Ribbon"]
      142 NAMECALL                         R9 R8 K46 ["FindFirstChild"]
      144 CALL                             R9 2 1
      145 JUMPIFNOT                        R9 ; [+3]
      146 NAMECALL                         R10 R9 K47 ["Destroy"]
      148 CALL                             R10 1 0
      149 GETTABLEKS                       R14 R0 K18 ["Packages"]
      151 GETTABLEKS                       R13 R14 K49 ["_Index"]
      153 GETTABLEKS                       R12 R13 K50 ["DeveloperFramework"]
      155 GETTABLEKS                       R11 R12 K50 ["DeveloperFramework"]
      157 GETTABLEKS                       R10 R11 K48 ["DeveloperFramework.storybook"]
      159 NAMECALL                         R10 R10 K47 ["Destroy"]
      161 CALL                             R10 1 0
      162 SETTABLEKS                       R8 R0 K51 ["Parent"]
      164 GETIMPORT                        R10 K54 [Instance.new]
      166 LOADK                            R11 K55 ["ObjectValue"]
      167 CALL                             R10 1 1
      168 LOADK                            R11 K56 ["Plugin"]
      169 SETTABLEKS                       R11 R10 K57 ["Name"]
      171 GETIMPORT                        R11 K1 [plugin]
      173 SETTABLEKS                       R11 R10 K58 ["Value"]
      175 SETTABLEKS                       R0 R10 K51 ["Parent"]
      177 GETTABLEKS                       R9 R0 K12 ["Src"]
      179 GETTABLEKS                       R8 R9 K13 ["SharedFlags"]
      181 NAMECALL                         R8 R8 K59 ["GetChildren"]
      183 CALL                             R8 1 3
      184 FORGPREP                         R8
      185 LOADK                            R15 K60 ["ModuleScript"]
      186 NAMECALL                         R13 R12 K61 ["IsA"]
      188 CALL                             R13 2 1
      189 JUMPIFNOT                        R13 ; [+5]
      190 GETIMPORT                        R13 K63 [pcall]
      192 NEWCLOSURE                       R14 P1
      193 CAPTURE                          VAL R12
      194 CALL                             R13 1 0
      195 FORGLOOP                         R8 2 ; [-11]
      197 RETURN                           R0 0
