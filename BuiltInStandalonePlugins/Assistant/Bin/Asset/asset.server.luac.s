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
       60 GETIMPORT                        R5 K7 [require]
       62 GETTABLEKS                       R8 R0 K17 ["Bin"]
       64 GETTABLEKS                       R7 R8 K18 ["Common"]
       66 GETTABLEKS                       R6 R7 K19 ["pluginType"]
       68 CALL                             R5 1 1
       69 GETTABLEKS                       R7 R5 K20 ["get"]
       71 CALL                             R7 0 1
       72 GETTABLEKS                       R8 R5 K21 ["Asset"]
       74 JUMPIFEQ                         R7 R8 ; [+2]
       76 LOADB                            R6 0 +1
       77 LOADB                            R6 1
       78 LOADNIL                          R7
       79 MOVE                             R8 R3
       80 CALL                             R8 0 1
       81 JUMPIFNOT                        R8 ; [+105]
       82 GETIMPORT                        R8 K7 [require]
       84 GETTABLEKS                       R10 R0 K8 ["Packages"]
       86 GETTABLEKS                       R9 R10 K22 ["AssistantUI"]
       88 CALL                             R8 1 1
       89 GETIMPORT                        R9 K7 [require]
       91 GETTABLEKS                       R12 R0 K11 ["Src"]
       93 GETTABLEKS                       R11 R12 K23 ["Util"]
       95 GETTABLEKS                       R10 R11 K24 ["StudioNetworking"]
       97 CALL                             R9 1 1
       98 GETTABLEKS                       R11 R8 K25 ["Utils"]
      100 GETTABLEKS                       R10 R11 K26 ["DataModelType"]
      102 GETTABLEKS                       R11 R10 K27 ["getDataModelType"]
      104 CALL                             R11 0 1
      105 GETTABLEKS                       R14 R8 K13 ["Flags"]
      107 GETTABLEKS                       R13 R14 K28 ["Shared"]
      109 GETTABLEKS                       R12 R13 K29 ["FFlagAssistantTestAutomation"]
      111 GETTABLEKS                       R15 R8 K13 ["Flags"]
      113 GETTABLEKS                       R14 R15 K28 ["Shared"]
      115 GETTABLEKS                       R13 R14 K30 ["FFlagAssistantDMNetworkIdentity"]
      117 MOVE                             R14 R13
      118 CALL                             R14 0 1
      119 JUMPIFNOT                        R14 ; [+16]
      120 GETTABLEKS                       R14 R9 K31 ["create"]
      122 DUPTABLE                         R15 K35 [{"plugin", "isGuest", "isHost", "identity"}]
      123 GETIMPORT                        R16 K1 [plugin]
      125 SETTABLEKS                       R16 R15 K0 ["plugin"]
      127 SETTABLEKS                       R6 R15 K32 ["isGuest"]
      129 LOADB                            R16 1
      130 SETTABLEKS                       R16 R15 K33 ["isHost"]
      132 SETTABLEKS                       R11 R15 K34 ["identity"]
      134 CALL                             R14 1 1
      135 MOVE                             R7 R14
      136 MOVE                             R14 R4
      137 CALL                             R14 0 1
      138 JUMPIF                           R14 ; [+3]
      139 MOVE                             R14 R12
      140 CALL                             R14 0 1
      141 JUMPIFNOT                        R14 ; [+18]
      142 JUMPIFNOTEQKS                    R11 K36 ["Client"] ; [+17]
      144 GETIMPORT                        R14 K7 [require]
      146 GETTABLEKS                       R17 R0 K11 ["Src"]
      148 GETTABLEKS                       R16 R17 K23 ["Util"]
      150 GETTABLEKS                       R15 R16 K37 ["GameLoadedNotifier"]
      152 CALL                             R14 1 1
      153 GETTABLEKS                       R15 R14 K38 ["init"]
      155 MOVE                             R16 R11
      156 GETIMPORT                        R17 K1 [plugin]
      158 MOVE                             R18 R7
      159 CALL                             R15 3 0
      160 MOVE                             R14 R12
      161 CALL                             R14 0 1
      162 JUMPIFNOT                        R14 ; [+18]
      163 JUMPIFNOTEQKS                    R11 K39 ["Server"] ; [+17]
      165 GETIMPORT                        R14 K7 [require]
      167 GETTABLEKS                       R17 R0 K11 ["Src"]
      169 GETTABLEKS                       R16 R17 K23 ["Util"]
      171 GETTABLEKS                       R15 R16 K40 ["GameStoppedNotifier"]
      173 CALL                             R14 1 1
      174 GETTABLEKS                       R15 R14 K38 ["init"]
      176 MOVE                             R16 R11
      177 GETIMPORT                        R17 K1 [plugin]
      179 MOVE                             R18 R7
      180 CALL                             R15 3 0
      181 MOVE                             R14 R12
      182 CALL                             R14 0 1
      183 JUMPIF                           R14 ; [+3]
      184 JUMPIFEQKS                       R11 K41 ["Edit"] ; [+2]
      186 RETURN                           R0 0
      187 JUMPIFNOT                        R6 ; [+17]
      188 GETIMPORT                        R8 K7 [require]
      190 GETTABLEKS                       R10 R0 K8 ["Packages"]
      192 GETTABLEKS                       R9 R10 K42 ["ReactDeveloperTools"]
      194 CALL                             R8 1 1
      195 GETTABLEKS                       R9 R8 K43 ["tryEnableDevtools"]
      197 DUPTABLE                         R10 K46 [{"pluginName", "profileOnStart"}]
      198 LOADK                            R11 K4 ["Assistant"]
      199 SETTABLEKS                       R11 R10 K44 ["pluginName"]
      201 LOADB                            R11 0
      202 SETTABLEKS                       R11 R10 K45 ["profileOnStart"]
      204 CALL                             R9 1 0
      205 GETIMPORT                        R8 K7 [require]
      207 GETTABLEKS                       R10 R0 K11 ["Src"]
      209 GETTABLEKS                       R9 R10 K47 ["toolInit"]
      211 CALL                             R8 1 1
      212 MOVE                             R9 R8
      213 GETIMPORT                        R10 K1 [plugin]
      215 DUPTABLE                         R11 K48 [{"isGuest", "isHost"}]
      216 SETTABLEKS                       R6 R11 K32 ["isGuest"]
      218 LOADB                            R12 1
      219 SETTABLEKS                       R12 R11 K33 ["isHost"]
      221 MOVE                             R12 R7
      222 CALL                             R9 3 0
      223 JUMPIFNOT                        R6 ; [+23]
      224 GETIMPORT                        R9 K7 [require]
      226 GETTABLEKS                       R12 R0 K17 ["Bin"]
      228 GETTABLEKS                       R11 R12 K18 ["Common"]
      230 GETTABLEKS                       R10 R11 K49 ["setup"]
      232 CALL                             R9 1 1
      233 GETIMPORT                        R10 K7 [require]
      235 GETTABLEKS                       R13 R0 K17 ["Bin"]
      237 GETTABLEKS                       R12 R13 K18 ["Common"]
      239 GETTABLEKS                       R11 R12 K50 ["setupMain"]
      241 CALL                             R10 1 1
      242 MOVE                             R11 R9
      243 GETIMPORT                        R12 K1 [plugin]
      245 MOVE                             R13 R10
      246 CALL                             R11 2 0
      247 RETURN                           R0 0
