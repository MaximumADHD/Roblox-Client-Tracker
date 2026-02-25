MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["Assistant"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R3 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R3 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["Assistant"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K7 [require]
       31 GETTABLEKS                       R5 R0 K11 ["Src"]
       33 GETTABLEKS                       R4 R5 K13 ["Flags"]
       35 GETTABLEKS                       R3 R4 K14 ["FFlagIsLuobuBuild"]
       37 CALL                             R2 1 1
       38 MOVE                             R3 R2
       39 CALL                             R3 0 1
       40 JUMPIFNOT                        R3 ; [+1]
       41 RETURN                           R0 0
       42 GETIMPORT                        R3 K7 [require]
       44 GETTABLEKS                       R6 R0 K11 ["Src"]
       46 GETTABLEKS                       R5 R6 K13 ["Flags"]
       48 GETTABLEKS                       R4 R5 K15 ["FFlagAssistantAllowPlayMode"]
       50 CALL                             R3 1 1
       51 GETIMPORT                        R4 K7 [require]
       53 GETTABLEKS                       R7 R0 K11 ["Src"]
       55 GETTABLEKS                       R6 R7 K13 ["Flags"]
       57 GETTABLEKS                       R5 R6 K16 ["FFlagAssistantDebugMode"]
       59 CALL                             R4 1 1
       60 MOVE                             R5 R3
       61 CALL                             R5 0 1
       62 JUMPIFNOT                        R5 ; [+69]
       63 GETIMPORT                        R5 K7 [require]
       65 GETTABLEKS                       R7 R0 K8 ["Packages"]
       67 GETTABLEKS                       R6 R7 K17 ["AssistantUI"]
       69 CALL                             R5 1 1
       70 GETTABLEKS                       R7 R5 K18 ["Utils"]
       72 GETTABLEKS                       R6 R7 K19 ["DataModelType"]
       74 GETTABLEKS                       R7 R6 K20 ["getDataModelType"]
       76 CALL                             R7 0 1
       77 GETTABLEKS                       R10 R5 K13 ["Flags"]
       79 GETTABLEKS                       R9 R10 K21 ["Shared"]
       81 GETTABLEKS                       R8 R9 K22 ["FFlagAssistantTestAutomation"]
       83 MOVE                             R9 R4
       84 CALL                             R9 0 1
       85 JUMPIF                           R9 ; [+3]
       86 MOVE                             R9 R8
       87 CALL                             R9 0 1
       88 JUMPIFNOT                        R9 ; [+17]
       89 JUMPIFNOTEQKS                    R7 K23 ["Client"] ; [+16]
       91 GETIMPORT                        R9 K7 [require]
       93 GETTABLEKS                       R12 R0 K11 ["Src"]
       95 GETTABLEKS                       R11 R12 K24 ["Util"]
       97 GETTABLEKS                       R10 R11 K25 ["GameLoadedNotifier"]
       99 CALL                             R9 1 1
      100 GETTABLEKS                       R10 R9 K26 ["init"]
      102 MOVE                             R11 R7
      103 GETIMPORT                        R12 K1 [plugin]
      105 CALL                             R10 2 0
      106 MOVE                             R9 R8
      107 CALL                             R9 0 1
      108 JUMPIFNOT                        R9 ; [+17]
      109 JUMPIFNOTEQKS                    R7 K27 ["Server"] ; [+16]
      111 GETIMPORT                        R9 K7 [require]
      113 GETTABLEKS                       R12 R0 K11 ["Src"]
      115 GETTABLEKS                       R11 R12 K24 ["Util"]
      117 GETTABLEKS                       R10 R11 K28 ["GameStoppedNotifier"]
      119 CALL                             R9 1 1
      120 GETTABLEKS                       R10 R9 K26 ["init"]
      122 MOVE                             R11 R7
      123 GETIMPORT                        R12 K1 [plugin]
      125 CALL                             R10 2 0
      126 MOVE                             R9 R8
      127 CALL                             R9 0 1
      128 JUMPIF                           R9 ; [+3]
      129 JUMPIFEQKS                       R7 K29 ["Edit"] ; [+2]
      131 RETURN                           R0 0
      132 GETIMPORT                        R5 K7 [require]
      134 GETTABLEKS                       R8 R0 K30 ["Bin"]
      136 GETTABLEKS                       R7 R8 K31 ["Common"]
      138 GETTABLEKS                       R6 R7 K32 ["pluginType"]
      140 CALL                             R5 1 1
      141 GETTABLEKS                       R7 R5 K33 ["get"]
      143 CALL                             R7 0 1
      144 GETTABLEKS                       R8 R5 K34 ["Asset"]
      146 JUMPIFEQ                         R7 R8 ; [+2]
      148 LOADB                            R6 0 +1
      149 LOADB                            R6 1
      150 JUMPIFNOT                        R6 ; [+17]
      151 GETIMPORT                        R7 K7 [require]
      153 GETTABLEKS                       R9 R0 K8 ["Packages"]
      155 GETTABLEKS                       R8 R9 K35 ["ReactDeveloperTools"]
      157 CALL                             R7 1 1
      158 GETTABLEKS                       R8 R7 K36 ["tryEnableDevtools"]
      160 DUPTABLE                         R9 K39 [{"pluginName", "profileOnStart"}]
      161 LOADK                            R10 K4 ["Assistant"]
      162 SETTABLEKS                       R10 R9 K37 ["pluginName"]
      164 LOADB                            R10 0
      165 SETTABLEKS                       R10 R9 K38 ["profileOnStart"]
      167 CALL                             R8 1 0
      168 GETIMPORT                        R7 K7 [require]
      170 GETTABLEKS                       R9 R0 K11 ["Src"]
      172 GETTABLEKS                       R8 R9 K40 ["toolInit"]
      174 CALL                             R7 1 1
      175 MOVE                             R8 R7
      176 GETIMPORT                        R9 K1 [plugin]
      178 DUPTABLE                         R10 K43 [{"isGuest", "isHost"}]
      179 SETTABLEKS                       R6 R10 K41 ["isGuest"]
      181 LOADB                            R11 1
      182 SETTABLEKS                       R11 R10 K42 ["isHost"]
      184 CALL                             R8 2 0
      185 JUMPIFNOT                        R6 ; [+23]
      186 GETIMPORT                        R8 K7 [require]
      188 GETTABLEKS                       R11 R0 K30 ["Bin"]
      190 GETTABLEKS                       R10 R11 K31 ["Common"]
      192 GETTABLEKS                       R9 R10 K44 ["setup"]
      194 CALL                             R8 1 1
      195 GETIMPORT                        R9 K7 [require]
      197 GETTABLEKS                       R12 R0 K30 ["Bin"]
      199 GETTABLEKS                       R11 R12 K31 ["Common"]
      201 GETTABLEKS                       R10 R11 K45 ["setupMain"]
      203 CALL                             R9 1 1
      204 MOVE                             R10 R8
      205 GETIMPORT                        R11 K1 [plugin]
      207 MOVE                             R12 R9
      208 CALL                             R10 2 0
      209 RETURN                           R0 0
