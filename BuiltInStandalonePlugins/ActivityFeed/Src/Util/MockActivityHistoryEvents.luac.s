MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["SharedTypes"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 0 0
       20 LOADN                            R5 1
       21 LOADN                            R3 100
       22 LOADN                            R4 1
       23 FORNPREP                         R3
       24 DUPTABLE                         R8 K21 [{["id"], ["eventType"] = 1, ["userId"] = 1667878157, ["universeId"] = 3900846521, ["placeId"] = 11366343566, ["resourceId"] = 1667878157, ["metaData"], ["createdUnixTimeMs"] = 0}]
       25 FASTCALL1                        TOSTRING R5 ; [+3]
       26 MOVE                             R10 R5
       27 GETIMPORT                        R9 K23 [tostring]
       29 CALL                             R9 1 1
       30 SETTABLEKS                       R9 R8 K8 ["id"]
       32 DUPTABLE                         R9 K26 [{["Action"] = True}]
       33 SETTABLEKS                       R9 R8 K18 ["metaData"]
       35 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       37 MOVE                             R7 R2
       38 GETIMPORT                        R6 K29 [table.insert]
       40 CALL                             R6 2 0
       41 FORNLOOP                         R3
       42 NEWTABLE                         R3 0 6
       44 DUPTABLE                         R4 K36 [{["createdUnixTimeMs"] = 1738623523452, ["eventType"] = 145, ["id"], ["metaData"], ["placeId"] = 93220352899686, ["resourceId"] = 3333, ["universeId"] = 6648203057, ["userId"] = 5005422365}]
       45 LOADN                            R6 1
       46 FASTCALL1                        TOSTRING R6 ; [+2]
       47 GETIMPORT                        R5 K23 [tostring]
       49 CALL                             R5 1 1
       50 SETTABLEKS                       R5 R4 K8 ["id"]
       52 DUPTABLE                         R5 K41 [{["CommitMessage"] = "Newline case \n\n\n commit", ["NumberOfScripts"] = 1, ["Scripts"]}]
       53 NEWTABLE                         R6 0 1
       55 DUPTABLE                         R7 K46 [{["Name"] = "Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
       56 SETLIST                          R6 R7 1 [1]
       58 SETTABLEKS                       R6 R5 K40 ["Scripts"]
       60 SETTABLEKS                       R5 R4 K18 ["metaData"]
       62 DUPTABLE                         R5 K36 [{["createdUnixTimeMs"] = 1738623523452, ["eventType"] = 145, ["id"], ["metaData"], ["placeId"] = 93220352899686, ["resourceId"] = 3333, ["universeId"] = 6648203057, ["userId"] = 5005422365}]
       63 LOADN                            R7 2
       64 FASTCALL1                        TOSTRING R7 ; [+2]
       65 GETIMPORT                        R6 K23 [tostring]
       67 CALL                             R6 1 1
       68 SETTABLEKS                       R6 R5 K8 ["id"]
       70 DUPTABLE                         R6 K48 [{["CommitMessage"] = "", ["NumberOfScripts"] = 1, ["Scripts"]}]
       71 NEWTABLE                         R7 0 1
       73 DUPTABLE                         R8 K50 [{["Name"] = "No commit message case", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
       74 SETLIST                          R7 R8 1 [1]
       76 SETTABLEKS                       R7 R6 K40 ["Scripts"]
       78 SETTABLEKS                       R6 R5 K18 ["metaData"]
       80 DUPTABLE                         R6 K36 [{["createdUnixTimeMs"] = 1738623523452, ["eventType"] = 145, ["id"], ["metaData"], ["placeId"] = 93220352899686, ["resourceId"] = 3333, ["universeId"] = 6648203057, ["userId"] = 5005422365}]
       81 LOADN                            R8 3
       82 FASTCALL1                        TOSTRING R8 ; [+2]
       83 GETIMPORT                        R7 K23 [tostring]
       85 CALL                             R7 1 1
       86 SETTABLEKS                       R7 R6 K8 ["id"]
       88 DUPTABLE                         R7 K53 [{["CommitMessage"] = "*Here i \n-s [a](link) c!(ommit)[image] w`ith lots of \nmarkdown #these characters - [takes](link) up one byte of space \n in a computer's memory. Some Unicode characters, like emojis and some letters in non-Latin alphabets, take up two bytes of space and therefore count as two characters. Use our character counter tool below for an accurate count of your characters.", ["NumberOfScripts"] = 2, ["Scripts"]}]
       89 NEWTABLE                         R8 0 8
       91 DUPTABLE                         R9 K55 [{["Name"] = "?Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
       92 DUPTABLE                         R10 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
       93 DUPTABLE                         R11 K61 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "!Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
       94 DUPTABLE                         R12 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
       95 DUPTABLE                         R13 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
       96 DUPTABLE                         R14 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
       97 DUPTABLE                         R15 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
       98 DUPTABLE                         R16 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
       99 SETLIST                          R8 R9 8 [1]
      101 SETTABLEKS                       R8 R7 K40 ["Scripts"]
      103 SETTABLEKS                       R7 R6 K18 ["metaData"]
      105 DUPTABLE                         R7 K36 [{["createdUnixTimeMs"] = 1738623523452, ["eventType"] = 145, ["id"], ["metaData"], ["placeId"] = 93220352899686, ["resourceId"] = 3333, ["universeId"] = 6648203057, ["userId"] = 5005422365}]
      106 LOADN                            R9 4
      107 FASTCALL1                        TOSTRING R9 ; [+2]
      108 GETIMPORT                        R8 K23 [tostring]
      110 CALL                             R8 1 1
      111 SETTABLEKS                       R8 R7 K8 ["id"]
      113 DUPTABLE                         R8 K64 [{["CommitMessage"] = "This commit has a show more scripts case", ["NumberOfScripts"] = 10, ["Scripts"]}]
      114 NEWTABLE                         R9 0 6
      116 DUPTABLE                         R10 K66 [{["Name"] = "&Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
      117 DUPTABLE                         R11 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
      118 DUPTABLE                         R12 K68 [{["Name"] = "-Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
      119 DUPTABLE                         R13 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
      120 DUPTABLE                         R14 K68 [{["Name"] = "-Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
      121 DUPTABLE                         R15 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
      122 SETLIST                          R9 R10 6 [1]
      124 SETTABLEKS                       R9 R8 K40 ["Scripts"]
      126 SETTABLEKS                       R8 R7 K18 ["metaData"]
      128 DUPTABLE                         R8 K36 [{["createdUnixTimeMs"] = 1738623523452, ["eventType"] = 145, ["id"], ["metaData"], ["placeId"] = 93220352899686, ["resourceId"] = 3333, ["universeId"] = 6648203057, ["userId"] = 5005422365}]
      129 LOADN                            R10 5
      130 FASTCALL1                        TOSTRING R10 ; [+2]
      131 GETIMPORT                        R9 K23 [tostring]
      133 CALL                             R9 1 1
      134 SETTABLEKS                       R9 R8 K8 ["id"]
      136 DUPTABLE                         R9 K70 [{["CommitMessage"] = "This commit has a long message A character can be any letter, number, punctuation, special character, or space. Each of these characters takes up one byte of space in a computer's memory. Some Unicode characters, like emojis and some letters in non-Latin alphabets, take up two bytes of space and therefore count as two characters. Use our character counter tool below for an accurate count of your characters.", ["NumberOfScripts"] = 10, ["Scripts"]}]
      137 NEWTABLE                         R10 0 8
      139 DUPTABLE                         R11 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
      140 DUPTABLE                         R12 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
      141 DUPTABLE                         R13 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
      142 DUPTABLE                         R14 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
      143 DUPTABLE                         R15 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
      144 DUPTABLE                         R16 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
      145 DUPTABLE                         R17 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
      146 DUPTABLE                         R18 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
      147 SETLIST                          R10 R11 8 [1]
      149 SETTABLEKS                       R10 R9 K40 ["Scripts"]
      151 SETTABLEKS                       R9 R8 K18 ["metaData"]
      153 DUPTABLE                         R9 K36 [{["createdUnixTimeMs"] = 1738623523452, ["eventType"] = 145, ["id"], ["metaData"], ["placeId"] = 93220352899686, ["resourceId"] = 3333, ["universeId"] = 6648203057, ["userId"] = 5005422365}]
      154 LOADN                            R11 6
      155 FASTCALL1                        TOSTRING R11 ; [+2]
      156 GETIMPORT                        R10 K23 [tostring]
      158 CALL                             R10 1 1
      159 SETTABLEKS                       R10 R9 K8 ["id"]
      161 DUPTABLE                         R10 K73 [{["CommitMessage"] = "This commit's number of scripts exceeds the payload", ["NumberOfScripts"] = 101, ["Scripts"]}]
      162 NEWTABLE                         R11 0 7
      164 DUPTABLE                         R12 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
      165 DUPTABLE                         R13 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
      166 DUPTABLE                         R14 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
      167 DUPTABLE                         R15 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
      168 DUPTABLE                         R16 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
      169 DUPTABLE                         R17 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
      170 DUPTABLE                         R18 K59 [{["FullName"] = "Workspace.Folder.*Script", ["Name"] = "*Script", ["UniqueId"] = "153fcd4e-9715-fde3-07b2-dff2000057b1"}]
      171 SETLIST                          R11 R12 7 [1]
      173 SETTABLEKS                       R11 R10 K40 ["Scripts"]
      175 SETTABLEKS                       R10 R9 K18 ["metaData"]
      177 SETLIST                          R3 R4 6 [1]
      179 NEWTABLE                         R4 0 152
      181 DUPTABLE                         R5 K79 [{["id"], ["eventType"] = 0, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 2533309}]
      182 LOADN                            R7 1
      183 FASTCALL1                        TOSTRING R7 ; [+2]
      184 GETIMPORT                        R6 K23 [tostring]
      186 CALL                             R6 1 1
      187 SETTABLEKS                       R6 R5 K8 ["id"]
      189 NEWTABLE                         R6 0 0
      191 SETTABLEKS                       R6 R5 K18 ["metaData"]
      193 DUPTABLE                         R6 K81 [{["id"], ["eventType"] = 1, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 4557320}]
      194 LOADN                            R8 2
      195 FASTCALL1                        TOSTRING R8 ; [+2]
      196 GETIMPORT                        R7 K23 [tostring]
      198 CALL                             R7 1 1
      199 SETTABLEKS                       R7 R6 K8 ["id"]
      201 DUPTABLE                         R7 K83 [{["Action"] = "true"}]
      202 SETTABLEKS                       R7 R6 K18 ["metaData"]
      204 DUPTABLE                         R7 K85 [{["id"], ["eventType"] = 2, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 6497524}]
      205 LOADN                            R9 3
      206 FASTCALL1                        TOSTRING R9 ; [+2]
      207 GETIMPORT                        R8 K23 [tostring]
      209 CALL                             R8 1 1
      210 SETTABLEKS                       R8 R7 K8 ["id"]
      212 DUPTABLE                         R8 K88 [{["Playability"] = "eagle"}]
      213 SETTABLEKS                       R8 R7 K18 ["metaData"]
      215 DUPTABLE                         R8 K91 [{["id"], ["eventType"] = 3, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 7661531}]
      216 LOADN                            R10 4
      217 FASTCALL1                        TOSTRING R10 ; [+2]
      218 GETIMPORT                        R9 K23 [tostring]
      220 CALL                             R9 1 1
      221 SETTABLEKS                       R9 R8 K8 ["id"]
      223 DUPTABLE                         R9 K94 [{["StringName"] = "cat"}]
      224 SETTABLEKS                       R9 R8 K18 ["metaData"]
      226 DUPTABLE                         R9 K97 [{["id"], ["eventType"] = 4, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 9845377}]
      227 LOADN                            R11 5
      228 FASTCALL1                        TOSTRING R11 ; [+2]
      229 GETIMPORT                        R10 K23 [tostring]
      231 CALL                             R10 1 1
      232 SETTABLEKS                       R10 R9 K8 ["id"]
      234 DUPTABLE                         R10 K99 [{["StringName"] = "fox"}]
      235 SETTABLEKS                       R10 R9 K18 ["metaData"]
      237 DUPTABLE                         R10 K102 [{["id"], ["eventType"] = 5, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 10164519}]
      238 LOADN                            R12 6
      239 FASTCALL1                        TOSTRING R12 ; [+2]
      240 GETIMPORT                        R11 K23 [tostring]
      242 CALL                             R11 1 1
      243 SETTABLEKS                       R11 R10 K8 ["id"]
      245 DUPTABLE                         R11 K104 [{["StringName"] = "whale"}]
      246 SETTABLEKS                       R11 R10 K18 ["metaData"]
      248 DUPTABLE                         R11 K107 [{["id"], ["eventType"] = 6, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 11679329}]
      249 LOADN                            R13 7
      250 FASTCALL1                        TOSTRING R13 ; [+2]
      251 GETIMPORT                        R12 K23 [tostring]
      253 CALL                             R12 1 1
      254 SETTABLEKS                       R12 R11 K8 ["id"]
      256 DUPTABLE                         R12 K110 [{["AvatarType"] = "monkey"}]
      257 SETTABLEKS                       R12 R11 K18 ["metaData"]
      259 DUPTABLE                         R12 K113 [{["id"], ["eventType"] = 7, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 12261034}]
      260 LOADN                            R14 8
      261 FASTCALL1                        TOSTRING R14 ; [+2]
      262 GETIMPORT                        R13 K23 [tostring]
      264 CALL                             R13 1 1
      265 SETTABLEKS                       R13 R12 K8 ["id"]
      267 DUPTABLE                         R13 K116 [{["Animation"] = "koala"}]
      268 SETTABLEKS                       R13 R12 K18 ["metaData"]
      270 DUPTABLE                         R13 K119 [{["id"], ["eventType"] = 8, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 14027944}]
      271 LOADN                            R15 9
      272 FASTCALL1                        TOSTRING R15 ; [+2]
      273 GETIMPORT                        R14 K23 [tostring]
      275 CALL                             R14 1 1
      276 SETTABLEKS                       R14 R13 K8 ["id"]
      278 DUPTABLE                         R14 K121 [{["Collision"] = "eagle"}]
      279 SETTABLEKS                       R14 R13 K18 ["metaData"]
      281 DUPTABLE                         R14 K124 [{["id"], ["eventType"] = 9, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 15128199}]
      282 LOADN                            R16 10
      283 FASTCALL1                        TOSTRING R16 ; [+2]
      284 GETIMPORT                        R15 K23 [tostring]
      286 CALL                             R15 1 1
      287 SETTABLEKS                       R15 R14 K8 ["id"]
      289 DUPTABLE                         R15 K127 [{["Scale"] = "lion"}]
      290 SETTABLEKS                       R15 R14 K18 ["metaData"]
      292 DUPTABLE                         R15 K129 [{["id"], ["eventType"] = 10, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 16399514}]
      293 LOADN                            R17 11
      294 FASTCALL1                        TOSTRING R17 ; [+2]
      295 GETIMPORT                        R16 K23 [tostring]
      297 CALL                             R16 1 1
      298 SETTABLEKS                       R16 R15 K8 ["id"]
      300 DUPTABLE                         R16 K131 [{["Scale"] = "tiger"}]
      301 SETTABLEKS                       R16 R15 K18 ["metaData"]
      303 DUPTABLE                         R16 K134 [{["id"], ["eventType"] = 11, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 18316011}]
      304 LOADN                            R18 12
      305 FASTCALL1                        TOSTRING R18 ; [+2]
      306 GETIMPORT                        R17 K23 [tostring]
      308 CALL                             R17 1 1
      309 SETTABLEKS                       R17 R16 K8 ["id"]
      311 DUPTABLE                         R17 K136 [{["Scale"] = "horse"}]
      312 SETTABLEKS                       R17 R16 K18 ["metaData"]
      314 DUPTABLE                         R17 K139 [{["id"], ["eventType"] = 12, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 20888491}]
      315 LOADN                            R19 13
      316 FASTCALL1                        TOSTRING R19 ; [+2]
      317 GETIMPORT                        R18 K23 [tostring]
      319 CALL                             R18 1 1
      320 SETTABLEKS                       R18 R17 K8 ["id"]
      322 DUPTABLE                         R18 K140 [{["Scale"] = "cat"}]
      323 SETTABLEKS                       R18 R17 K18 ["metaData"]
      325 DUPTABLE                         R18 K143 [{["id"], ["eventType"] = 13, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 23333484}]
      326 LOADN                            R20 14
      327 FASTCALL1                        TOSTRING R20 ; [+2]
      328 GETIMPORT                        R19 K23 [tostring]
      330 CALL                             R19 1 1
      331 SETTABLEKS                       R19 R18 K8 ["id"]
      333 DUPTABLE                         R19 K145 [{["Scale"] = "giraffe"}]
      334 SETTABLEKS                       R19 R18 K18 ["metaData"]
      336 DUPTABLE                         R19 K148 [{["id"], ["eventType"] = 14, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 23895406}]
      337 LOADN                            R21 15
      338 FASTCALL1                        TOSTRING R21 ; [+2]
      339 GETIMPORT                        R20 K23 [tostring]
      341 CALL                             R20 1 1
      342 SETTABLEKS                       R20 R19 K8 ["id"]
      344 NEWTABLE                         R20 0 0
      346 SETTABLEKS                       R20 R19 K18 ["metaData"]
      348 DUPTABLE                         R20 K151 [{["id"], ["eventType"] = 15, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 25165696}]
      349 LOADN                            R22 16
      350 FASTCALL1                        TOSTRING R22 ; [+2]
      351 GETIMPORT                        R21 K23 [tostring]
      353 CALL                             R21 1 1
      354 SETTABLEKS                       R21 R20 K8 ["id"]
      356 NEWTABLE                         R21 0 0
      358 SETTABLEKS                       R21 R20 K18 ["metaData"]
      360 SETLIST                          R4 R5 16 [1]
      362 DUPTABLE                         R5 K154 [{["id"], ["eventType"] = 16, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 26173094}]
      363 LOADN                            R7 17
      364 FASTCALL1                        TOSTRING R7 ; [+2]
      365 GETIMPORT                        R6 K23 [tostring]
      367 CALL                             R6 1 1
      368 SETTABLEKS                       R6 R5 K8 ["id"]
      370 DUPTABLE                         R6 K159 [{["NewName"] = "kangaroo", ["OldName"] = "hippo"}]
      371 SETTABLEKS                       R6 R5 K18 ["metaData"]
      373 DUPTABLE                         R6 K162 [{["id"], ["eventType"] = 17, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 28063144}]
      374 LOADN                            R8 18
      375 FASTCALL1                        TOSTRING R8 ; [+2]
      376 GETIMPORT                        R7 K23 [tostring]
      378 CALL                             R7 1 1
      379 SETTABLEKS                       R7 R6 K8 ["id"]
      381 NEWTABLE                         R7 0 0
      383 SETTABLEKS                       R7 R6 K18 ["metaData"]
      385 DUPTABLE                         R7 K165 [{["id"], ["eventType"] = 18, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 30034358}]
      386 LOADN                            R9 19
      387 FASTCALL1                        TOSTRING R9 ; [+2]
      388 GETIMPORT                        R8 K23 [tostring]
      390 CALL                             R8 1 1
      391 SETTABLEKS                       R8 R7 K8 ["id"]
      393 DUPTABLE                         R8 K168 [{["Genre"] = "penguin"}]
      394 SETTABLEKS                       R8 R7 K18 ["metaData"]
      396 DUPTABLE                         R8 K171 [{["id"], ["eventType"] = 19, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 32486123}]
      397 LOADN                            R10 20
      398 FASTCALL1                        TOSTRING R10 ; [+2]
      399 GETIMPORT                        R9 K23 [tostring]
      401 CALL                             R9 1 1
      402 SETTABLEKS                       R9 R8 K8 ["id"]
      404 DUPTABLE                         R9 K83 [{["Action"] = "true"}]
      405 SETTABLEKS                       R9 R8 K18 ["metaData"]
      407 DUPTABLE                         R9 K174 [{["id"], ["eventType"] = 20, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 33426902}]
      408 LOADN                            R11 21
      409 FASTCALL1                        TOSTRING R11 ; [+2]
      410 GETIMPORT                        R10 K23 [tostring]
      412 CALL                             R10 1 1
      413 SETTABLEKS                       R10 R9 K8 ["id"]
      415 DUPTABLE                         R10 K83 [{["Action"] = "true"}]
      416 SETTABLEKS                       R10 R9 K18 ["metaData"]
      418 DUPTABLE                         R10 K177 [{["id"], ["eventType"] = 21, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 33581777}]
      419 LOADN                            R12 22
      420 FASTCALL1                        TOSTRING R12 ; [+2]
      421 GETIMPORT                        R11 K23 [tostring]
      423 CALL                             R11 1 1
      424 SETTABLEKS                       R11 R10 K8 ["id"]
      426 DUPTABLE                         R11 K179 [{["Action"] = "false"}]
      427 SETTABLEKS                       R11 R10 K18 ["metaData"]
      429 DUPTABLE                         R11 K182 [{["id"], ["eventType"] = 22, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 34844952}]
      430 LOADN                            R13 23
      431 FASTCALL1                        TOSTRING R13 ; [+2]
      432 GETIMPORT                        R12 K23 [tostring]
      434 CALL                             R12 1 1
      435 SETTABLEKS                       R12 R11 K8 ["id"]
      437 DUPTABLE                         R12 K83 [{["Action"] = "true"}]
      438 SETTABLEKS                       R12 R11 K18 ["metaData"]
      440 DUPTABLE                         R12 K185 [{["id"], ["eventType"] = 23, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 35472790}]
      441 LOADN                            R14 24
      442 FASTCALL1                        TOSTRING R14 ; [+2]
      443 GETIMPORT                        R13 K23 [tostring]
      445 CALL                             R13 1 1
      446 SETTABLEKS                       R13 R12 K8 ["id"]
      448 NEWTABLE                         R13 0 0
      450 SETTABLEKS                       R13 R12 K18 ["metaData"]
      452 DUPTABLE                         R13 K188 [{["id"], ["eventType"] = 24, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 37851949}]
      453 LOADN                            R15 25
      454 FASTCALL1                        TOSTRING R15 ; [+2]
      455 GETIMPORT                        R14 K23 [tostring]
      457 CALL                             R14 1 1
      458 SETTABLEKS                       R14 R13 K8 ["id"]
      460 DUPTABLE                         R14 K191 [{["Channel"] = "parrot"}]
      461 SETTABLEKS                       R14 R13 K18 ["metaData"]
      463 DUPTABLE                         R14 K194 [{["id"], ["eventType"] = 25, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 40374004}]
      464 LOADN                            R16 26
      465 FASTCALL1                        TOSTRING R16 ; [+2]
      466 GETIMPORT                        R15 K23 [tostring]
      468 CALL                             R15 1 1
      469 SETTABLEKS                       R15 R14 K8 ["id"]
      471 DUPTABLE                         R15 K196 [{["Channel"] = "elephant"}]
      472 SETTABLEKS                       R15 R14 K18 ["metaData"]
      474 DUPTABLE                         R15 K199 [{["id"], ["eventType"] = 26, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 40779199}]
      475 LOADN                            R17 27
      476 FASTCALL1                        TOSTRING R17 ; [+2]
      477 GETIMPORT                        R16 K23 [tostring]
      479 CALL                             R16 1 1
      480 SETTABLEKS                       R16 R15 K8 ["id"]
      482 DUPTABLE                         R16 K200 [{["Channel"] = "lion"}]
      483 SETTABLEKS                       R16 R15 K18 ["metaData"]
      485 DUPTABLE                         R16 K203 [{["id"], ["eventType"] = 27, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 41580002}]
      486 LOADN                            R18 28
      487 FASTCALL1                        TOSTRING R18 ; [+2]
      488 GETIMPORT                        R17 K23 [tostring]
      490 CALL                             R17 1 1
      491 SETTABLEKS                       R17 R16 K8 ["id"]
      493 DUPTABLE                         R17 K179 [{["Action"] = "false"}]
      494 SETTABLEKS                       R17 R16 K18 ["metaData"]
      496 DUPTABLE                         R17 K206 [{["id"], ["eventType"] = 28, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 43316783}]
      497 LOADN                            R19 29
      498 FASTCALL1                        TOSTRING R19 ; [+2]
      499 GETIMPORT                        R18 K23 [tostring]
      501 CALL                             R18 1 1
      502 SETTABLEKS                       R18 R17 K8 ["id"]
      504 DUPTABLE                         R18 K208 [{["Gravity"] = "giraffe"}]
      505 SETTABLEKS                       R18 R17 K18 ["metaData"]
      507 DUPTABLE                         R18 K211 [{["id"], ["eventType"] = 29, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 44468973}]
      508 LOADN                            R20 30
      509 FASTCALL1                        TOSTRING R20 ; [+2]
      510 GETIMPORT                        R19 K23 [tostring]
      512 CALL                             R19 1 1
      513 SETTABLEKS                       R19 R18 K8 ["id"]
      515 DUPTABLE                         R19 K214 [{["JumpHeight"] = "cheetah"}]
      516 SETTABLEKS                       R19 R18 K18 ["metaData"]
      518 DUPTABLE                         R19 K217 [{["id"], ["eventType"] = 30, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 46657800}]
      519 LOADN                            R21 31
      520 FASTCALL1                        TOSTRING R21 ; [+2]
      521 GETIMPORT                        R20 K23 [tostring]
      523 CALL                             R20 1 1
      524 SETTABLEKS                       R20 R19 K8 ["id"]
      526 DUPTABLE                         R20 K220 [{["JumpPower"] = "hawk"}]
      527 SETTABLEKS                       R20 R19 K18 ["metaData"]
      529 DUPTABLE                         R20 K223 [{["id"], ["eventType"] = 31, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 47158946}]
      530 LOADN                            R22 32
      531 FASTCALL1                        TOSTRING R22 ; [+2]
      532 GETIMPORT                        R21 K23 [tostring]
      534 CALL                             R21 1 1
      535 SETTABLEKS                       R21 R20 K8 ["id"]
      537 DUPTABLE                         R21 K225 [{["WalkSpeed"] = "horse"}]
      538 SETTABLEKS                       R21 R20 K18 ["metaData"]
      540 SETLIST                          R4 R5 16 [17]
      542 DUPTABLE                         R5 K228 [{["id"], ["eventType"] = 32, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 48428017}]
      543 LOADN                            R7 33
      544 FASTCALL1                        TOSTRING R7 ; [+2]
      545 GETIMPORT                        R6 K23 [tostring]
      547 CALL                             R6 1 1
      548 SETTABLEKS                       R6 R5 K8 ["id"]
      550 DUPTABLE                         R6 K230 [{["MaxSlopeAngle"] = "kangaroo"}]
      551 SETTABLEKS                       R6 R5 K18 ["metaData"]
      553 DUPTABLE                         R6 K233 [{["id"], ["eventType"] = 33, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 49159118}]
      554 LOADN                            R8 34
      555 FASTCALL1                        TOSTRING R8 ; [+2]
      556 GETIMPORT                        R7 K23 [tostring]
      558 CALL                             R7 1 1
      559 SETTABLEKS                       R7 R6 K8 ["id"]
      561 DUPTABLE                         R7 K236 [{["Update"] = "snake"}]
      562 SETTABLEKS                       R7 R6 K18 ["metaData"]
      564 DUPTABLE                         R7 K239 [{["id"], ["eventType"] = 34, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 50616938}]
      565 LOADN                            R9 35
      566 FASTCALL1                        TOSTRING R9 ; [+2]
      567 GETIMPORT                        R8 K23 [tostring]
      569 CALL                             R8 1 1
      570 SETTABLEKS                       R8 R7 K8 ["id"]
      572 DUPTABLE                         R8 K241 [{["Language"] = "monkey", ["Action"] = "true"}]
      573 SETTABLEKS                       R8 R7 K18 ["metaData"]
      575 DUPTABLE                         R8 K244 [{["id"], ["eventType"] = 35, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 50637946}]
      576 LOADN                            R10 36
      577 FASTCALL1                        TOSTRING R10 ; [+2]
      578 GETIMPORT                        R9 K23 [tostring]
      580 CALL                             R9 1 1
      581 SETTABLEKS                       R9 R8 K8 ["id"]
      583 DUPTABLE                         R9 K245 [{["Language"] = "fox", ["Action"] = "false"}]
      584 SETTABLEKS                       R9 R8 K18 ["metaData"]
      586 DUPTABLE                         R9 K248 [{["id"], ["eventType"] = 36, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 51655580}]
      587 LOADN                            R11 37
      588 FASTCALL1                        TOSTRING R11 ; [+2]
      589 GETIMPORT                        R10 K23 [tostring]
      591 CALL                             R10 1 1
      592 SETTABLEKS                       R10 R9 K8 ["id"]
      594 DUPTABLE                         R10 K250 [{["Language"] = "bear", ["Action"] = "false"}]
      595 SETTABLEKS                       R10 R9 K18 ["metaData"]
      597 DUPTABLE                         R10 K253 [{["id"], ["eventType"] = 37, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 53353403}]
      598 LOADN                            R12 38
      599 FASTCALL1                        TOSTRING R12 ; [+2]
      600 GETIMPORT                        R11 K23 [tostring]
      602 CALL                             R11 1 1
      603 SETTABLEKS                       R11 R10 K8 ["id"]
      605 DUPTABLE                         R11 K179 [{["Action"] = "false"}]
      606 SETTABLEKS                       R11 R10 K18 ["metaData"]
      608 DUPTABLE                         R11 K256 [{["id"], ["eventType"] = 38, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 55432773}]
      609 LOADN                            R13 39
      610 FASTCALL1                        TOSTRING R13 ; [+2]
      611 GETIMPORT                        R12 K23 [tostring]
      613 CALL                             R12 1 1
      614 SETTABLEKS                       R12 R11 K8 ["id"]
      616 DUPTABLE                         R12 K179 [{["Action"] = "false"}]
      617 SETTABLEKS                       R12 R11 K18 ["metaData"]
      619 DUPTABLE                         R12 K259 [{["id"], ["eventType"] = 39, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 57614272}]
      620 LOADN                            R14 40
      621 FASTCALL1                        TOSTRING R14 ; [+2]
      622 GETIMPORT                        R13 K23 [tostring]
      624 CALL                             R13 1 1
      625 SETTABLEKS                       R13 R12 K8 ["id"]
      627 NEWTABLE                         R13 0 0
      629 SETTABLEKS                       R13 R12 K18 ["metaData"]
      631 DUPTABLE                         R13 K262 [{["id"], ["eventType"] = 40, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 60139683}]
      632 LOADN                            R15 41
      633 FASTCALL1                        TOSTRING R15 ; [+2]
      634 GETIMPORT                        R14 K23 [tostring]
      636 CALL                             R14 1 1
      637 SETTABLEKS                       R14 R13 K8 ["id"]
      639 NEWTABLE                         R14 0 0
      641 SETTABLEKS                       R14 R13 K18 ["metaData"]
      643 DUPTABLE                         R14 K265 [{["id"], ["eventType"] = 41, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 60402975}]
      644 LOADN                            R16 42
      645 FASTCALL1                        TOSTRING R16 ; [+2]
      646 GETIMPORT                        R15 K23 [tostring]
      648 CALL                             R15 1 1
      649 SETTABLEKS                       R15 R14 K8 ["id"]
      651 DUPTABLE                         R15 K267 [{["Language"] = "snake", ["IconName"] = "kangaroo"}]
      652 SETTABLEKS                       R15 R14 K18 ["metaData"]
      654 DUPTABLE                         R15 K270 [{["id"], ["eventType"] = 42, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 62338400}]
      655 LOADN                            R17 43
      656 FASTCALL1                        TOSTRING R17 ; [+2]
      657 GETIMPORT                        R16 K23 [tostring]
      659 CALL                             R16 1 1
      660 SETTABLEKS                       R16 R15 K8 ["id"]
      662 DUPTABLE                         R16 K271 [{["Language"] = "tiger", ["IconName"] = "monkey"}]
      663 SETTABLEKS                       R16 R15 K18 ["metaData"]
      665 DUPTABLE                         R16 K274 [{["id"], ["eventType"] = 43, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 64608746}]
      666 LOADN                            R18 44
      667 FASTCALL1                        TOSTRING R18 ; [+2]
      668 GETIMPORT                        R17 K23 [tostring]
      670 CALL                             R17 1 1
      671 SETTABLEKS                       R17 R16 K8 ["id"]
      673 DUPTABLE                         R17 K275 [{["Language"] = "hippo"}]
      674 SETTABLEKS                       R17 R16 K18 ["metaData"]
      676 DUPTABLE                         R17 K278 [{["id"], ["eventType"] = 44, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 66235383}]
      677 LOADN                            R19 45
      678 FASTCALL1                        TOSTRING R19 ; [+2]
      679 GETIMPORT                        R18 K23 [tostring]
      681 CALL                             R18 1 1
      682 SETTABLEKS                       R18 R17 K8 ["id"]
      684 DUPTABLE                         R18 K280 [{["Language"] = "dolphin"}]
      685 SETTABLEKS                       R18 R17 K18 ["metaData"]
      687 DUPTABLE                         R18 K283 [{["id"], ["eventType"] = 45, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 66930784}]
      688 LOADN                            R20 46
      689 FASTCALL1                        TOSTRING R20 ; [+2]
      690 GETIMPORT                        R19 K23 [tostring]
      692 CALL                             R19 1 1
      693 SETTABLEKS                       R19 R18 K8 ["id"]
      695 DUPTABLE                         R19 K285 [{["Language"] = "elephant", ["ThumbnailName"] = "monkey"}]
      696 SETTABLEKS                       R19 R18 K18 ["metaData"]
      698 DUPTABLE                         R19 K288 [{["id"], ["eventType"] = 46, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 67078918}]
      699 LOADN                            R21 47
      700 FASTCALL1                        TOSTRING R21 ; [+2]
      701 GETIMPORT                        R20 K23 [tostring]
      703 CALL                             R20 1 1
      704 SETTABLEKS                       R20 R19 K8 ["id"]
      706 DUPTABLE                         R20 K289 [{["Language"] = "horse", ["ThumbnailName"] = "hippo"}]
      707 SETTABLEKS                       R20 R19 K18 ["metaData"]
      709 DUPTABLE                         R20 K292 [{["id"], ["eventType"] = 47, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 67351300}]
      710 LOADN                            R22 48
      711 FASTCALL1                        TOSTRING R22 ; [+2]
      712 GETIMPORT                        R21 K23 [tostring]
      714 CALL                             R21 1 1
      715 SETTABLEKS                       R21 R20 K8 ["id"]
      717 DUPTABLE                         R21 K295 [{["Language"] = "panda", ["ThumbnailName"] = "rabbit"}]
      718 SETTABLEKS                       R21 R20 K18 ["metaData"]
      720 SETLIST                          R4 R5 16 [33]
      722 DUPTABLE                         R5 K298 [{["id"], ["eventType"] = 48, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 67988885}]
      723 LOADN                            R7 49
      724 FASTCALL1                        TOSTRING R7 ; [+2]
      725 GETIMPORT                        R6 K23 [tostring]
      727 CALL                             R6 1 1
      728 SETTABLEKS                       R6 R5 K8 ["id"]
      730 NEWTABLE                         R6 0 0
      732 SETTABLEKS                       R6 R5 K18 ["metaData"]
      734 DUPTABLE                         R6 K301 [{["id"], ["eventType"] = 49, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 70539955}]
      735 LOADN                            R8 50
      736 FASTCALL1                        TOSTRING R8 ; [+2]
      737 GETIMPORT                        R7 K23 [tostring]
      739 CALL                             R7 1 1
      740 SETTABLEKS                       R7 R6 K8 ["id"]
      742 DUPTABLE                         R7 K304 [{["StringKey"] = "eagle", ["Language"] = "shark"}]
      743 SETTABLEKS                       R7 R6 K18 ["metaData"]
      745 DUPTABLE                         R7 K307 [{["id"], ["eventType"] = 50, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 72574425}]
      746 LOADN                            R9 51
      747 FASTCALL1                        TOSTRING R9 ; [+2]
      748 GETIMPORT                        R8 K23 [tostring]
      750 CALL                             R8 1 1
      751 SETTABLEKS                       R8 R7 K8 ["id"]
      753 DUPTABLE                         R8 K308 [{["StringKey"] = "horse", ["Language"] = "hawk"}]
      754 SETTABLEKS                       R8 R7 K18 ["metaData"]
      756 DUPTABLE                         R8 K311 [{["id"], ["eventType"] = 51, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 74405285}]
      757 LOADN                            R10 52
      758 FASTCALL1                        TOSTRING R10 ; [+2]
      759 GETIMPORT                        R9 K23 [tostring]
      761 CALL                             R9 1 1
      762 SETTABLEKS                       R9 R8 K8 ["id"]
      764 DUPTABLE                         R9 K312 [{["StringKey"] = "fox", ["Language"] = "whale"}]
      765 SETTABLEKS                       R9 R8 K18 ["metaData"]
      767 DUPTABLE                         R9 K315 [{["id"], ["eventType"] = 52, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 75492120}]
      768 LOADN                            R11 53
      769 FASTCALL1                        TOSTRING R11 ; [+2]
      770 GETIMPORT                        R10 K23 [tostring]
      772 CALL                             R10 1 1
      773 SETTABLEKS                       R10 R9 K8 ["id"]
      775 DUPTABLE                         R10 K317 [{["Language"] = "monkey", ["BadgeName"] = "fox"}]
      776 SETTABLEKS                       R10 R9 K18 ["metaData"]
      778 DUPTABLE                         R10 K320 [{["id"], ["eventType"] = 53, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 77671749}]
      779 LOADN                            R12 54
      780 FASTCALL1                        TOSTRING R12 ; [+2]
      781 GETIMPORT                        R11 K23 [tostring]
      783 CALL                             R11 1 1
      784 SETTABLEKS                       R11 R10 K8 ["id"]
      786 DUPTABLE                         R11 K321 [{["Language"] = "whale", ["BadgeName"] = "giraffe"}]
      787 SETTABLEKS                       R11 R10 K18 ["metaData"]
      789 DUPTABLE                         R11 K324 [{["id"], ["eventType"] = 54, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 79026769}]
      790 LOADN                            R13 55
      791 FASTCALL1                        TOSTRING R13 ; [+2]
      792 GETIMPORT                        R12 K23 [tostring]
      794 CALL                             R12 1 1
      795 SETTABLEKS                       R12 R11 K8 ["id"]
      797 DUPTABLE                         R12 K326 [{["Language"] = "kangaroo", ["BadgeName"] = "zebra"}]
      798 SETTABLEKS                       R12 R11 K18 ["metaData"]
      800 DUPTABLE                         R12 K329 [{["id"], ["eventType"] = 55, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 81495237}]
      801 LOADN                            R14 56
      802 FASTCALL1                        TOSTRING R14 ; [+2]
      803 GETIMPORT                        R13 K23 [tostring]
      805 CALL                             R13 1 1
      806 SETTABLEKS                       R13 R12 K8 ["id"]
      808 DUPTABLE                         R13 K331 [{["Language"] = "dog", ["BadgeName"] = "shark"}]
      809 SETTABLEKS                       R13 R12 K18 ["metaData"]
      811 DUPTABLE                         R13 K334 [{["id"], ["eventType"] = 56, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 81983353}]
      812 LOADN                            R15 57
      813 FASTCALL1                        TOSTRING R15 ; [+2]
      814 GETIMPORT                        R14 K23 [tostring]
      816 CALL                             R14 1 1
      817 SETTABLEKS                       R14 R13 K8 ["id"]
      819 DUPTABLE                         R14 K336 [{["Language"] = "monkey", ["ProductName"] = "hawk"}]
      820 SETTABLEKS                       R14 R13 K18 ["metaData"]
      822 DUPTABLE                         R14 K339 [{["id"], ["eventType"] = 57, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 83017419}]
      823 LOADN                            R16 58
      824 FASTCALL1                        TOSTRING R16 ; [+2]
      825 GETIMPORT                        R15 K23 [tostring]
      827 CALL                             R15 1 1
      828 SETTABLEKS                       R15 R14 K8 ["id"]
      830 DUPTABLE                         R15 K341 [{["Language"] = "owl", ["ProductName"] = "rabbit"}]
      831 SETTABLEKS                       R15 R14 K18 ["metaData"]
      833 DUPTABLE                         R15 K344 [{["id"], ["eventType"] = 58, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 83211347}]
      834 LOADN                            R17 59
      835 FASTCALL1                        TOSTRING R17 ; [+2]
      836 GETIMPORT                        R16 K23 [tostring]
      838 CALL                             R16 1 1
      839 SETTABLEKS                       R16 R15 K8 ["id"]
      841 DUPTABLE                         R16 K346 [{["Language"] = "eagle", ["ProductName"] = "wolf"}]
      842 SETTABLEKS                       R16 R15 K18 ["metaData"]
      844 DUPTABLE                         R16 K349 [{["id"], ["eventType"] = 59, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 83893481}]
      845 LOADN                            R18 60
      846 FASTCALL1                        TOSTRING R18 ; [+2]
      847 GETIMPORT                        R17 K23 [tostring]
      849 CALL                             R17 1 1
      850 SETTABLEKS                       R17 R16 K8 ["id"]
      852 DUPTABLE                         R17 K350 [{["Language"] = "tiger", ["ProductName"] = "panda"}]
      853 SETTABLEKS                       R17 R16 K18 ["metaData"]
      855 DUPTABLE                         R17 K353 [{["id"], ["eventType"] = 60, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 86389649}]
      856 LOADN                            R19 61
      857 FASTCALL1                        TOSTRING R19 ; [+2]
      858 GETIMPORT                        R18 K23 [tostring]
      860 CALL                             R18 1 1
      861 SETTABLEKS                       R18 R17 K8 ["id"]
      863 DUPTABLE                         R18 K355 [{["Language"] = "parrot", ["PassName"] = "shark"}]
      864 SETTABLEKS                       R18 R17 K18 ["metaData"]
      866 DUPTABLE                         R18 K358 [{["id"], ["eventType"] = 61, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 87194844}]
      867 LOADN                            R20 62
      868 FASTCALL1                        TOSTRING R20 ; [+2]
      869 GETIMPORT                        R19 K23 [tostring]
      871 CALL                             R19 1 1
      872 SETTABLEKS                       R19 R18 K8 ["id"]
      874 DUPTABLE                         R19 K359 [{["Language"] = "lion", ["PassName"] = "rabbit"}]
      875 SETTABLEKS                       R19 R18 K18 ["metaData"]
      877 DUPTABLE                         R19 K362 [{["id"], ["eventType"] = 62, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 89675665}]
      878 LOADN                            R21 63
      879 FASTCALL1                        TOSTRING R21 ; [+2]
      880 GETIMPORT                        R20 K23 [tostring]
      882 CALL                             R20 1 1
      883 SETTABLEKS                       R20 R19 K8 ["id"]
      885 DUPTABLE                         R20 K363 [{["Language"] = "monkey", ["PassName"] = "zebra"}]
      886 SETTABLEKS                       R20 R19 K18 ["metaData"]
      888 DUPTABLE                         R20 K366 [{["id"], ["eventType"] = 63, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 90078323}]
      889 LOADN                            R22 64
      890 FASTCALL1                        TOSTRING R22 ; [+2]
      891 GETIMPORT                        R21 K23 [tostring]
      893 CALL                             R21 1 1
      894 SETTABLEKS                       R21 R20 K8 ["id"]
      896 DUPTABLE                         R21 K367 [{["Language"] = "owl", ["PassName"] = "horse"}]
      897 SETTABLEKS                       R21 R20 K18 ["metaData"]
      899 SETLIST                          R4 R5 16 [49]
      901 DUPTABLE                         R5 K370 [{["id"], ["eventType"] = 64, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 92269657}]
      902 LOADN                            R7 65
      903 FASTCALL1                        TOSTRING R7 ; [+2]
      904 GETIMPORT                        R6 K23 [tostring]
      906 CALL                             R6 1 1
      907 SETTABLEKS                       R6 R5 K8 ["id"]
      909 NEWTABLE                         R6 0 0
      911 SETTABLEKS                       R6 R5 K18 ["metaData"]
      913 DUPTABLE                         R6 K373 [{["id"], ["eventType"] = 65, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 94147122}]
      914 LOADN                            R8 66
      915 FASTCALL1                        TOSTRING R8 ; [+2]
      916 GETIMPORT                        R7 K23 [tostring]
      918 CALL                             R7 1 1
      919 SETTABLEKS                       R7 R6 K8 ["id"]
      921 DUPTABLE                         R7 K375 [{["GroupName"] = "bear"}]
      922 SETTABLEKS                       R7 R6 K18 ["metaData"]
      924 DUPTABLE                         R7 K378 [{["id"], ["eventType"] = 66, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 96653348}]
      925 LOADN                            R9 67
      926 FASTCALL1                        TOSTRING R9 ; [+2]
      927 GETIMPORT                        R8 K23 [tostring]
      929 CALL                             R8 1 1
      930 SETTABLEKS                       R8 R7 K8 ["id"]
      932 DUPTABLE                         R8 K83 [{["Action"] = "true"}]
      933 SETTABLEKS                       R8 R7 K18 ["metaData"]
      935 DUPTABLE                         R8 K381 [{["id"], ["eventType"] = 67, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 96685844}]
      936 LOADN                            R10 68
      937 FASTCALL1                        TOSTRING R10 ; [+2]
      938 GETIMPORT                        R9 K23 [tostring]
      940 CALL                             R9 1 1
      941 SETTABLEKS                       R9 R8 K8 ["id"]
      943 DUPTABLE                         R9 K179 [{["Action"] = "false"}]
      944 SETTABLEKS                       R9 R8 K18 ["metaData"]
      946 DUPTABLE                         R9 K384 [{["id"], ["eventType"] = 68, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 99243418}]
      947 LOADN                            R11 69
      948 FASTCALL1                        TOSTRING R11 ; [+2]
      949 GETIMPORT                        R10 K23 [tostring]
      951 CALL                             R10 1 1
      952 SETTABLEKS                       R10 R9 K8 ["id"]
      954 DUPTABLE                         R10 K179 [{["Action"] = "false"}]
      955 SETTABLEKS                       R10 R9 K18 ["metaData"]
      957 DUPTABLE                         R10 K387 [{["id"], ["eventType"] = 69, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 100081192}]
      958 LOADN                            R12 70
      959 FASTCALL1                        TOSTRING R12 ; [+2]
      960 GETIMPORT                        R11 K23 [tostring]
      962 CALL                             R11 1 1
      963 SETTABLEKS                       R11 R10 K8 ["id"]
      965 DUPTABLE                         R11 K390 [{["Price"] = "octopus"}]
      966 SETTABLEKS                       R11 R10 K18 ["metaData"]
      968 DUPTABLE                         R11 K393 [{["id"], ["eventType"] = 70, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 101857556}]
      969 LOADN                            R13 71
      970 FASTCALL1                        TOSTRING R13 ; [+2]
      971 GETIMPORT                        R12 K23 [tostring]
      973 CALL                             R12 1 1
      974 SETTABLEKS                       R12 R11 K8 ["id"]
      976 DUPTABLE                         R12 K395 [{["PlayableDevices"] = "eagle"}]
      977 SETTABLEKS                       R12 R11 K18 ["metaData"]
      979 DUPTABLE                         R12 K398 [{["id"], ["eventType"] = 71, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 102089291}]
      980 LOADN                            R14 72
      981 FASTCALL1                        TOSTRING R14 ; [+2]
      982 GETIMPORT                        R13 K23 [tostring]
      984 CALL                             R13 1 1
      985 SETTABLEKS                       R13 R12 K8 ["id"]
      987 DUPTABLE                         R13 K179 [{["Action"] = "false"}]
      988 SETTABLEKS                       R13 R12 K18 ["metaData"]
      990 DUPTABLE                         R13 K401 [{["id"], ["eventType"] = 72, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 103600173}]
      991 LOADN                            R15 73
      992 FASTCALL1                        TOSTRING R15 ; [+2]
      993 GETIMPORT                        R14 K23 [tostring]
      995 CALL                             R14 1 1
      996 SETTABLEKS                       R14 R13 K8 ["id"]
      998 DUPTABLE                         R14 K402 [{["Price"] = "monkey"}]
      999 SETTABLEKS                       R14 R13 K18 ["metaData"]
     1001 DUPTABLE                         R14 K405 [{["id"], ["eventType"] = 73, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 104412275}]
     1002 LOADN                            R16 74
     1003 FASTCALL1                        TOSTRING R16 ; [+2]
     1004 GETIMPORT                        R15 K23 [tostring]
     1006 CALL                             R15 1 1
     1007 SETTABLEKS                       R15 R14 K8 ["id"]
     1009 DUPTABLE                         R15 K407 [{["AdName"] = "horse", ["Action"] = "false"}]
     1010 SETTABLEKS                       R15 R14 K18 ["metaData"]
     1012 DUPTABLE                         R15 K410 [{["id"], ["eventType"] = 74, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 106536720}]
     1013 LOADN                            R17 75
     1014 FASTCALL1                        TOSTRING R17 ; [+2]
     1015 GETIMPORT                        R16 K23 [tostring]
     1017 CALL                             R16 1 1
     1018 SETTABLEKS                       R16 R15 K8 ["id"]
     1020 DUPTABLE                         R16 K412 [{["NewName"] = "crocodile", ["OldName"] = "parrot"}]
     1021 SETTABLEKS                       R16 R15 K18 ["metaData"]
     1023 DUPTABLE                         R16 K415 [{["id"], ["eventType"] = 75, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 107642432}]
     1024 LOADN                            R18 76
     1025 FASTCALL1                        TOSTRING R18 ; [+2]
     1026 GETIMPORT                        R17 K23 [tostring]
     1028 CALL                             R17 1 1
     1029 SETTABLEKS                       R17 R16 K8 ["id"]
     1031 NEWTABLE                         R17 0 0
     1033 SETTABLEKS                       R17 R16 K18 ["metaData"]
     1035 DUPTABLE                         R17 K418 [{["id"], ["eventType"] = 76, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 109494829}]
     1036 LOADN                            R19 77
     1037 FASTCALL1                        TOSTRING R19 ; [+2]
     1038 GETIMPORT                        R18 K23 [tostring]
     1040 CALL                             R18 1 1
     1041 SETTABLEKS                       R18 R17 K8 ["id"]
     1043 NEWTABLE                         R18 0 0
     1045 SETTABLEKS                       R18 R17 K18 ["metaData"]
     1047 DUPTABLE                         R18 K421 [{["id"], ["eventType"] = 77, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 110958554}]
     1048 LOADN                            R20 78
     1049 FASTCALL1                        TOSTRING R20 ; [+2]
     1050 GETIMPORT                        R19 K23 [tostring]
     1052 CALL                             R19 1 1
     1053 SETTABLEKS                       R19 R18 K8 ["id"]
     1055 NEWTABLE                         R19 0 0
     1057 SETTABLEKS                       R19 R18 K18 ["metaData"]
     1059 DUPTABLE                         R19 K424 [{["id"], ["eventType"] = 78, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 112982711}]
     1060 LOADN                            R21 79
     1061 FASTCALL1                        TOSTRING R21 ; [+2]
     1062 GETIMPORT                        R20 K23 [tostring]
     1064 CALL                             R20 1 1
     1065 SETTABLEKS                       R20 R19 K8 ["id"]
     1067 DUPTABLE                         R20 K425 [{["NewName"] = "hawk", ["OldName"] = "snake"}]
     1068 SETTABLEKS                       R20 R19 K18 ["metaData"]
     1070 DUPTABLE                         R20 K428 [{["id"], ["eventType"] = 79, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 115445555}]
     1071 LOADN                            R22 80
     1072 FASTCALL1                        TOSTRING R22 ; [+2]
     1073 GETIMPORT                        R21 K23 [tostring]
     1075 CALL                             R21 1 1
     1076 SETTABLEKS                       R21 R20 K8 ["id"]
     1078 NEWTABLE                         R21 0 0
     1080 SETTABLEKS                       R21 R20 K18 ["metaData"]
     1082 SETLIST                          R4 R5 16 [65]
     1084 DUPTABLE                         R5 K431 [{["id"], ["eventType"] = 80, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 115797665}]
     1085 LOADN                            R7 81
     1086 FASTCALL1                        TOSTRING R7 ; [+2]
     1087 GETIMPORT                        R6 K23 [tostring]
     1089 CALL                             R6 1 1
     1090 SETTABLEKS                       R6 R5 K8 ["id"]
     1092 NEWTABLE                         R6 0 0
     1094 SETTABLEKS                       R6 R5 K18 ["metaData"]
     1096 DUPTABLE                         R6 K434 [{["id"], ["eventType"] = 81, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 117497436}]
     1097 LOADN                            R8 82
     1098 FASTCALL1                        TOSTRING R8 ; [+2]
     1099 GETIMPORT                        R7 K23 [tostring]
     1101 CALL                             R7 1 1
     1102 SETTABLEKS                       R7 R6 K8 ["id"]
     1104 DUPTABLE                         R7 K435 [{["Price"] = "cheetah"}]
     1105 SETTABLEKS                       R7 R6 K18 ["metaData"]
     1107 DUPTABLE                         R7 K438 [{["id"], ["eventType"] = 82, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 119241194}]
     1108 LOADN                            R9 83
     1109 FASTCALL1                        TOSTRING R9 ; [+2]
     1110 GETIMPORT                        R8 K23 [tostring]
     1112 CALL                             R8 1 1
     1113 SETTABLEKS                       R8 R7 K8 ["id"]
     1115 NEWTABLE                         R8 0 0
     1117 SETTABLEKS                       R8 R7 K18 ["metaData"]
     1119 DUPTABLE                         R8 K441 [{["id"], ["eventType"] = 83, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 121739046}]
     1120 LOADN                            R10 84
     1121 FASTCALL1                        TOSTRING R10 ; [+2]
     1122 GETIMPORT                        R9 K23 [tostring]
     1124 CALL                             R9 1 1
     1125 SETTABLEKS                       R9 R8 K8 ["id"]
     1127 DUPTABLE                         R9 K443 [{["NewName"] = "dog", ["OldName"] = "rhino"}]
     1128 SETTABLEKS                       R9 R8 K18 ["metaData"]
     1130 DUPTABLE                         R9 K446 [{["id"], ["eventType"] = 84, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 123113376}]
     1131 LOADN                            R11 85
     1132 FASTCALL1                        TOSTRING R11 ; [+2]
     1133 GETIMPORT                        R10 K23 [tostring]
     1135 CALL                             R10 1 1
     1136 SETTABLEKS                       R10 R9 K8 ["id"]
     1138 NEWTABLE                         R10 0 0
     1140 SETTABLEKS                       R10 R9 K18 ["metaData"]
     1142 DUPTABLE                         R10 K449 [{["id"], ["eventType"] = 85, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 123423205}]
     1143 LOADN                            R12 86
     1144 FASTCALL1                        TOSTRING R12 ; [+2]
     1145 GETIMPORT                        R11 K23 [tostring]
     1147 CALL                             R11 1 1
     1148 SETTABLEKS                       R11 R10 K8 ["id"]
     1150 NEWTABLE                         R11 0 0
     1152 SETTABLEKS                       R11 R10 K18 ["metaData"]
     1154 DUPTABLE                         R11 K452 [{["id"], ["eventType"] = 86, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 125983016}]
     1155 LOADN                            R13 87
     1156 FASTCALL1                        TOSTRING R13 ; [+2]
     1157 GETIMPORT                        R12 K23 [tostring]
     1159 CALL                             R12 1 1
     1160 SETTABLEKS                       R12 R11 K8 ["id"]
     1162 DUPTABLE                         R12 K453 [{["Price"] = "wolf"}]
     1163 SETTABLEKS                       R12 R11 K18 ["metaData"]
     1165 DUPTABLE                         R12 K456 [{["id"], ["eventType"] = 87, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 128523677}]
     1166 LOADN                            R14 88
     1167 FASTCALL1                        TOSTRING R14 ; [+2]
     1168 GETIMPORT                        R13 K23 [tostring]
     1170 CALL                             R13 1 1
     1171 SETTABLEKS                       R13 R12 K8 ["id"]
     1173 NEWTABLE                         R13 0 0
     1175 SETTABLEKS                       R13 R12 K18 ["metaData"]
     1177 DUPTABLE                         R13 K459 [{["id"], ["eventType"] = 88, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 129533865}]
     1178 LOADN                            R15 89
     1179 FASTCALL1                        TOSTRING R15 ; [+2]
     1180 GETIMPORT                        R14 K23 [tostring]
     1182 CALL                             R14 1 1
     1183 SETTABLEKS                       R14 R13 K8 ["id"]
     1185 DUPTABLE                         R14 K179 [{["Action"] = "false"}]
     1186 SETTABLEKS                       R14 R13 K18 ["metaData"]
     1188 DUPTABLE                         R14 K462 [{["id"], ["eventType"] = 89, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 129934225}]
     1189 LOADN                            R16 90
     1190 FASTCALL1                        TOSTRING R16 ; [+2]
     1191 GETIMPORT                        R15 K23 [tostring]
     1193 CALL                             R15 1 1
     1194 SETTABLEKS                       R15 R14 K8 ["id"]
     1196 DUPTABLE                         R15 K464 [{["GroupName"] = "giraffe", ["RolesetName"] = "rhino", ["Action"] = "true"}]
     1197 SETTABLEKS                       R15 R14 K18 ["metaData"]
     1199 DUPTABLE                         R15 K467 [{["id"], ["eventType"] = 90, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 131702776}]
     1200 LOADN                            R17 91
     1201 FASTCALL1                        TOSTRING R17 ; [+2]
     1202 GETIMPORT                        R16 K23 [tostring]
     1204 CALL                             R16 1 1
     1205 SETTABLEKS                       R16 R15 K8 ["id"]
     1207 DUPTABLE                         R16 K179 [{["Action"] = "false"}]
     1208 SETTABLEKS                       R16 R15 K18 ["metaData"]
     1210 DUPTABLE                         R16 K470 [{["id"], ["eventType"] = 91, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 134191832}]
     1211 LOADN                            R18 92
     1212 FASTCALL1                        TOSTRING R18 ; [+2]
     1213 GETIMPORT                        R17 K23 [tostring]
     1215 CALL                             R17 1 1
     1216 SETTABLEKS                       R17 R16 K8 ["id"]
     1218 DUPTABLE                         R17 K179 [{["Action"] = "false"}]
     1219 SETTABLEKS                       R17 R16 K18 ["metaData"]
     1221 DUPTABLE                         R17 K473 [{["id"], ["eventType"] = 92, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 135036260}]
     1222 LOADN                            R19 93
     1223 FASTCALL1                        TOSTRING R19 ; [+2]
     1224 GETIMPORT                        R18 K23 [tostring]
     1226 CALL                             R18 1 1
     1227 SETTABLEKS                       R18 R17 K8 ["id"]
     1229 DUPTABLE                         R18 K474 [{["GroupName"] = "hawk", ["RolesetName"] = "owl", ["Action"] = "true"}]
     1230 SETTABLEKS                       R18 R17 K18 ["metaData"]
     1232 DUPTABLE                         R18 K477 [{["id"], ["eventType"] = 93, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 137229124}]
     1233 LOADN                            R20 94
     1234 FASTCALL1                        TOSTRING R20 ; [+2]
     1235 GETIMPORT                        R19 K23 [tostring]
     1237 CALL                             R19 1 1
     1238 SETTABLEKS                       R19 R18 K8 ["id"]
     1240 DUPTABLE                         R19 K478 [{["GroupName"] = "hawk", ["RolesetName"] = "cat", ["Action"] = "true"}]
     1241 SETTABLEKS                       R19 R18 K18 ["metaData"]
     1243 DUPTABLE                         R19 K481 [{["id"], ["eventType"] = 94, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 137382430}]
     1244 LOADN                            R21 95
     1245 FASTCALL1                        TOSTRING R21 ; [+2]
     1246 GETIMPORT                        R20 K23 [tostring]
     1248 CALL                             R20 1 1
     1249 SETTABLEKS                       R20 R19 K8 ["id"]
     1251 NEWTABLE                         R20 0 0
     1253 SETTABLEKS                       R20 R19 K18 ["metaData"]
     1255 DUPTABLE                         R20 K484 [{["id"], ["eventType"] = 95, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 139047688}]
     1256 LOADN                            R22 96
     1257 FASTCALL1                        TOSTRING R22 ; [+2]
     1258 GETIMPORT                        R21 K23 [tostring]
     1260 CALL                             R21 1 1
     1261 SETTABLEKS                       R21 R20 K8 ["id"]
     1263 NEWTABLE                         R21 0 0
     1265 SETTABLEKS                       R21 R20 K18 ["metaData"]
     1267 SETLIST                          R4 R5 16 [81]
     1269 DUPTABLE                         R5 K487 [{["id"], ["eventType"] = 96, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 141569131}]
     1270 LOADN                            R7 97
     1271 FASTCALL1                        TOSTRING R7 ; [+2]
     1272 GETIMPORT                        R6 K23 [tostring]
     1274 CALL                             R6 1 1
     1275 SETTABLEKS                       R6 R5 K8 ["id"]
     1277 NEWTABLE                         R6 0 0
     1279 SETTABLEKS                       R6 R5 K18 ["metaData"]
     1281 DUPTABLE                         R6 K490 [{["id"], ["eventType"] = 97, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 142230723}]
     1282 LOADN                            R8 98
     1283 FASTCALL1                        TOSTRING R8 ; [+2]
     1284 GETIMPORT                        R7 K23 [tostring]
     1286 CALL                             R7 1 1
     1287 SETTABLEKS                       R7 R6 K8 ["id"]
     1289 NEWTABLE                         R7 0 0
     1291 SETTABLEKS                       R7 R6 K18 ["metaData"]
     1293 DUPTABLE                         R7 K493 [{["id"], ["eventType"] = 98, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 144772703}]
     1294 LOADN                            R9 99
     1295 FASTCALL1                        TOSTRING R9 ; [+2]
     1296 GETIMPORT                        R8 K23 [tostring]
     1298 CALL                             R8 1 1
     1299 SETTABLEKS                       R8 R7 K8 ["id"]
     1301 NEWTABLE                         R8 0 0
     1303 SETTABLEKS                       R8 R7 K18 ["metaData"]
     1305 DUPTABLE                         R8 K496 [{["id"], ["eventType"] = 99, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 145461733}]
     1306 LOADN                            R10 100
     1307 FASTCALL1                        TOSTRING R10 ; [+2]
     1308 GETIMPORT                        R9 K23 [tostring]
     1310 CALL                             R9 1 1
     1311 SETTABLEKS                       R9 R8 K8 ["id"]
     1313 NEWTABLE                         R9 0 0
     1315 SETTABLEKS                       R9 R8 K18 ["metaData"]
     1317 DUPTABLE                         R9 K499 [{["id"], ["eventType"] = 100, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 147712808}]
     1318 LOADN                            R11 101
     1319 FASTCALL1                        TOSTRING R11 ; [+2]
     1320 GETIMPORT                        R10 K23 [tostring]
     1322 CALL                             R10 1 1
     1323 SETTABLEKS                       R10 R9 K8 ["id"]
     1325 DUPTABLE                         R10 K501 [{"GearTypes"}]
     1326 NEWTABLE                         R11 0 2
     1328 LOADK                            R12 K502 ["cat sword"]
     1329 LOADK                            R13 K503 ["dog shield"]
     1330 SETLIST                          R11 R12 2 [1]
     1332 SETTABLEKS                       R11 R10 K500 ["GearTypes"]
     1334 SETTABLEKS                       R10 R9 K18 ["metaData"]
     1336 DUPTABLE                         R10 K505 [{["id"], ["eventType"] = 101, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 148082776}]
     1337 LOADN                            R12 102
     1338 FASTCALL1                        TOSTRING R12 ; [+2]
     1339 GETIMPORT                        R11 K23 [tostring]
     1341 CALL                             R11 1 1
     1342 SETTABLEKS                       R11 R10 K8 ["id"]
     1344 DUPTABLE                         R11 K507 [{["Action"] = "false", ["PlaceName"] = "rhino"}]
     1345 SETTABLEKS                       R11 R10 K18 ["metaData"]
     1347 DUPTABLE                         R11 K510 [{["id"], ["eventType"] = 102, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 149541123}]
     1348 LOADN                            R13 103
     1349 FASTCALL1                        TOSTRING R13 ; [+2]
     1350 GETIMPORT                        R12 K23 [tostring]
     1352 CALL                             R12 1 1
     1353 SETTABLEKS                       R12 R11 K8 ["id"]
     1355 DUPTABLE                         R12 K511 [{["Genre"] = "tiger"}]
     1356 SETTABLEKS                       R12 R11 K18 ["metaData"]
     1358 DUPTABLE                         R12 K514 [{["id"], ["eventType"] = 103, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 151406515}]
     1359 LOADN                            R14 104
     1360 FASTCALL1                        TOSTRING R14 ; [+2]
     1361 GETIMPORT                        R13 K23 [tostring]
     1363 CALL                             R13 1 1
     1364 SETTABLEKS                       R13 R12 K8 ["id"]
     1366 DUPTABLE                         R13 K515 [{["NewName"] = "cheetah", ["OldName"] = "horse"}]
     1367 SETTABLEKS                       R13 R12 K18 ["metaData"]
     1369 DUPTABLE                         R13 K518 [{["id"], ["eventType"] = 104, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 153260042}]
     1370 LOADN                            R15 105
     1371 FASTCALL1                        TOSTRING R15 ; [+2]
     1372 GETIMPORT                        R14 K23 [tostring]
     1374 CALL                             R14 1 1
     1375 SETTABLEKS                       R14 R13 K8 ["id"]
     1377 DUPTABLE                         R14 K519 [{["PlaceName"] = "panda"}]
     1378 SETTABLEKS                       R14 R13 K18 ["metaData"]
     1380 DUPTABLE                         R14 K522 [{["id"], ["eventType"] = 105, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 155036664}]
     1381 LOADN                            R16 106
     1382 FASTCALL1                        TOSTRING R16 ; [+2]
     1383 GETIMPORT                        R15 K23 [tostring]
     1385 CALL                             R15 1 1
     1386 SETTABLEKS                       R15 R14 K8 ["id"]
     1388 DUPTABLE                         R15 K524 [{["Count"] = "hippo"}]
     1389 SETTABLEKS                       R15 R14 K18 ["metaData"]
     1391 DUPTABLE                         R15 K527 [{["id"], ["eventType"] = 106, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 157187568}]
     1392 LOADN                            R17 107
     1393 FASTCALL1                        TOSTRING R17 ; [+2]
     1394 GETIMPORT                        R16 K23 [tostring]
     1396 CALL                             R16 1 1
     1397 SETTABLEKS                       R16 R15 K8 ["id"]
     1399 NEWTABLE                         R16 0 0
     1401 SETTABLEKS                       R16 R15 K18 ["metaData"]
     1403 DUPTABLE                         R16 K530 [{["id"], ["eventType"] = 107, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 158815963}]
     1404 LOADN                            R18 108
     1405 FASTCALL1                        TOSTRING R18 ; [+2]
     1406 GETIMPORT                        R17 K23 [tostring]
     1408 CALL                             R17 1 1
     1409 SETTABLEKS                       R17 R16 K8 ["id"]
     1411 NEWTABLE                         R17 0 0
     1413 SETTABLEKS                       R17 R16 K18 ["metaData"]
     1415 DUPTABLE                         R17 K533 [{["id"], ["eventType"] = 108, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 159222946}]
     1416 LOADN                            R19 109
     1417 FASTCALL1                        TOSTRING R19 ; [+2]
     1418 GETIMPORT                        R18 K23 [tostring]
     1420 CALL                             R18 1 1
     1421 SETTABLEKS                       R18 R17 K8 ["id"]
     1423 DUPTABLE                         R18 K534 [{["Count"] = "penguin"}]
     1424 SETTABLEKS                       R18 R17 K18 ["metaData"]
     1426 DUPTABLE                         R18 K537 [{["id"], ["eventType"] = 109, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 159862825}]
     1427 LOADN                            R20 110
     1428 FASTCALL1                        TOSTRING R20 ; [+2]
     1429 GETIMPORT                        R19 K23 [tostring]
     1431 CALL                             R19 1 1
     1432 SETTABLEKS                       R19 R18 K8 ["id"]
     1434 DUPTABLE                         R19 K538 [{["Action"] = "true", ["PlaceName"] = "penguin"}]
     1435 SETTABLEKS                       R19 R18 K18 ["metaData"]
     1437 DUPTABLE                         R19 K541 [{["id"], ["eventType"] = 110, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 160660280}]
     1438 LOADN                            R21 111
     1439 FASTCALL1                        TOSTRING R21 ; [+2]
     1440 GETIMPORT                        R20 K23 [tostring]
     1442 CALL                             R20 1 1
     1443 SETTABLEKS                       R20 R19 K8 ["id"]
     1445 DUPTABLE                         R20 K542 [{["Action"] = "false", ["PlaceName"] = "hippo"}]
     1446 SETTABLEKS                       R20 R19 K18 ["metaData"]
     1448 DUPTABLE                         R20 K545 [{["id"], ["eventType"] = 111, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 162237826}]
     1449 LOADN                            R22 112
     1450 FASTCALL1                        TOSTRING R22 ; [+2]
     1451 GETIMPORT                        R21 K23 [tostring]
     1453 CALL                             R21 1 1
     1454 SETTABLEKS                       R21 R20 K8 ["id"]
     1456 DUPTABLE                         R21 K548 [{["PlaceName"] = "cheetah", ["OldVersion"] = "cat", ["NewVersion"] = "lion"}]
     1457 SETTABLEKS                       R21 R20 K18 ["metaData"]
     1459 SETLIST                          R4 R5 16 [97]
     1461 DUPTABLE                         R5 K551 [{["id"], ["eventType"] = 112, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 163542144}]
     1462 LOADN                            R7 113
     1463 FASTCALL1                        TOSTRING R7 ; [+2]
     1464 GETIMPORT                        R6 K23 [tostring]
     1466 CALL                             R6 1 1
     1467 SETTABLEKS                       R6 R5 K8 ["id"]
     1469 NEWTABLE                         R6 0 0
     1471 SETTABLEKS                       R6 R5 K18 ["metaData"]
     1473 DUPTABLE                         R6 K554 [{["id"], ["eventType"] = 113, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 163749939}]
     1474 LOADN                            R8 114
     1475 FASTCALL1                        TOSTRING R8 ; [+2]
     1476 GETIMPORT                        R7 K23 [tostring]
     1478 CALL                             R7 1 1
     1479 SETTABLEKS                       R7 R6 K8 ["id"]
     1481 NEWTABLE                         R7 0 0
     1483 SETTABLEKS                       R7 R6 K18 ["metaData"]
     1485 DUPTABLE                         R7 K557 [{["id"], ["eventType"] = 114, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 164167871}]
     1486 LOADN                            R9 115
     1487 FASTCALL1                        TOSTRING R9 ; [+2]
     1488 GETIMPORT                        R8 K23 [tostring]
     1490 CALL                             R8 1 1
     1491 SETTABLEKS                       R8 R7 K8 ["id"]
     1493 DUPTABLE                         R8 K558 [{["ThumbnailName"] = "eagle"}]
     1494 SETTABLEKS                       R8 R7 K18 ["metaData"]
     1496 DUPTABLE                         R8 K561 [{["id"], ["eventType"] = 115, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 164946238}]
     1497 LOADN                            R10 116
     1498 FASTCALL1                        TOSTRING R10 ; [+2]
     1499 GETIMPORT                        R9 K23 [tostring]
     1501 CALL                             R9 1 1
     1502 SETTABLEKS                       R9 R8 K8 ["id"]
     1504 DUPTABLE                         R9 K562 [{["ThumbnailName"] = "hawk"}]
     1505 SETTABLEKS                       R9 R8 K18 ["metaData"]
     1507 DUPTABLE                         R9 K565 [{["id"], ["eventType"] = 116, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 165125626}]
     1508 LOADN                            R11 117
     1509 FASTCALL1                        TOSTRING R11 ; [+2]
     1510 GETIMPORT                        R10 K23 [tostring]
     1512 CALL                             R10 1 1
     1513 SETTABLEKS                       R10 R9 K8 ["id"]
     1515 NEWTABLE                         R10 0 0
     1517 SETTABLEKS                       R10 R9 K18 ["metaData"]
     1519 DUPTABLE                         R10 K568 [{["id"], ["eventType"] = 117, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 167634070}]
     1520 LOADN                            R12 118
     1521 FASTCALL1                        TOSTRING R12 ; [+2]
     1522 GETIMPORT                        R11 K23 [tostring]
     1524 CALL                             R11 1 1
     1525 SETTABLEKS                       R11 R10 K8 ["id"]
     1527 DUPTABLE                         R11 K569 [{["ThumbnailName"] = "rabbit"}]
     1528 SETTABLEKS                       R11 R10 K18 ["metaData"]
     1530 DUPTABLE                         R11 K572 [{["id"], ["eventType"] = 118, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 169082523}]
     1531 LOADN                            R13 119
     1532 FASTCALL1                        TOSTRING R13 ; [+2]
     1533 GETIMPORT                        R12 K23 [tostring]
     1535 CALL                             R12 1 1
     1536 SETTABLEKS                       R12 R11 K8 ["id"]
     1538 DUPTABLE                         R12 K573 [{["PlaceName"] = "snake"}]
     1539 SETTABLEKS                       R12 R11 K18 ["metaData"]
     1541 DUPTABLE                         R12 K576 [{["id"], ["eventType"] = 119, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 169765396}]
     1542 LOADN                            R14 120
     1543 FASTCALL1                        TOSTRING R14 ; [+2]
     1544 GETIMPORT                        R13 K23 [tostring]
     1546 CALL                             R13 1 1
     1547 SETTABLEKS                       R13 R12 K8 ["id"]
     1549 DUPTABLE                         R13 K577 [{["PlaceName"] = "koala"}]
     1550 SETTABLEKS                       R13 R12 K18 ["metaData"]
     1552 DUPTABLE                         R13 K580 [{["id"], ["eventType"] = 120, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 171729282}]
     1553 LOADN                            R15 121
     1554 FASTCALL1                        TOSTRING R15 ; [+2]
     1555 GETIMPORT                        R14 K23 [tostring]
     1557 CALL                             R14 1 1
     1558 SETTABLEKS                       R14 R13 K8 ["id"]
     1560 DUPTABLE                         R14 K581 [{["PlaceName"] = "owl"}]
     1561 SETTABLEKS                       R14 R13 K18 ["metaData"]
     1563 DUPTABLE                         R14 K584 [{["id"], ["eventType"] = 121, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 171885827}]
     1564 LOADN                            R16 122
     1565 FASTCALL1                        TOSTRING R16 ; [+2]
     1566 GETIMPORT                        R15 K23 [tostring]
     1568 CALL                             R15 1 1
     1569 SETTABLEKS                       R15 R14 K8 ["id"]
     1571 NEWTABLE                         R15 0 0
     1573 SETTABLEKS                       R15 R14 K18 ["metaData"]
     1575 DUPTABLE                         R15 K587 [{["id"], ["eventType"] = 122, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 172624857}]
     1576 LOADN                            R17 123
     1577 FASTCALL1                        TOSTRING R17 ; [+2]
     1578 GETIMPORT                        R16 K23 [tostring]
     1580 CALL                             R16 1 1
     1581 SETTABLEKS                       R16 R15 K8 ["id"]
     1583 DUPTABLE                         R16 K588 [{["Price"] = "tiger"}]
     1584 SETTABLEKS                       R16 R15 K18 ["metaData"]
     1586 DUPTABLE                         R16 K591 [{["id"], ["eventType"] = 123, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 174778028}]
     1587 LOADN                            R18 124
     1588 FASTCALL1                        TOSTRING R18 ; [+2]
     1589 GETIMPORT                        R17 K23 [tostring]
     1591 CALL                             R17 1 1
     1592 SETTABLEKS                       R17 R16 K8 ["id"]
     1594 DUPTABLE                         R17 K83 [{["Action"] = "true"}]
     1595 SETTABLEKS                       R17 R16 K18 ["metaData"]
     1597 DUPTABLE                         R17 K594 [{["id"], ["eventType"] = 124, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 176441512}]
     1598 LOADN                            R19 125
     1599 FASTCALL1                        TOSTRING R19 ; [+2]
     1600 GETIMPORT                        R18 K23 [tostring]
     1602 CALL                             R18 1 1
     1603 SETTABLEKS                       R18 R17 K8 ["id"]
     1605 DUPTABLE                         R18 K599 [{["PackageName"] = "giraffe", ["VersionNumber"] = "elephant", ["NumberOfPackages"] = "monkey", ["TotalPackages"] = "whale"}]
     1606 SETTABLEKS                       R18 R17 K18 ["metaData"]
     1608 DUPTABLE                         R18 K602 [{["id"], ["eventType"] = 125, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 177745263}]
     1609 LOADN                            R20 126
     1610 FASTCALL1                        TOSTRING R20 ; [+2]
     1611 GETIMPORT                        R19 K23 [tostring]
     1613 CALL                             R19 1 1
     1614 SETTABLEKS                       R19 R18 K8 ["id"]
     1616 DUPTABLE                         R19 K603 [{["PackageName"] = "hippo", ["VersionNumber"] = "penguin", ["NumberOfPackages"] = "hawk", ["TotalPackages"] = "owl"}]
     1617 SETTABLEKS                       R19 R18 K18 ["metaData"]
     1619 DUPTABLE                         R19 K606 [{["id"], ["eventType"] = 126, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 178160795}]
     1620 LOADN                            R21 127
     1621 FASTCALL1                        TOSTRING R21 ; [+2]
     1622 GETIMPORT                        R20 K23 [tostring]
     1624 CALL                             R20 1 1
     1625 SETTABLEKS                       R20 R19 K8 ["id"]
     1627 DUPTABLE                         R20 K608 [{["PackageName"] = "eagle", ["VersionNumber"] = "parrot", ["NumberOfPackages"] = "crocodile", ["TotalPackages"] = "cheetah", ["FailedPackages"] = "snake"}]
     1628 SETTABLEKS                       R20 R19 K18 ["metaData"]
     1630 DUPTABLE                         R20 K611 [{["id"], ["eventType"] = 127, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 180710214}]
     1631 LOADN                            R22 128
     1632 FASTCALL1                        TOSTRING R22 ; [+2]
     1633 GETIMPORT                        R21 K23 [tostring]
     1635 CALL                             R21 1 1
     1636 SETTABLEKS                       R21 R20 K8 ["id"]
     1638 DUPTABLE                         R21 K613 [{["PackageName"] = "hippo", ["VersionNumber"] = "wolf", ["NumberOfPackages"] = "dog", ["TotalPackages"] = "kangaroo", ["AutoUpdate"] = "lion"}]
     1639 SETTABLEKS                       R21 R20 K18 ["metaData"]
     1641 SETLIST                          R4 R5 16 [113]
     1643 DUPTABLE                         R5 K616 [{["id"], ["eventType"] = 128, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 182330949}]
     1644 LOADN                            R7 129
     1645 FASTCALL1                        TOSTRING R7 ; [+2]
     1646 GETIMPORT                        R6 K23 [tostring]
     1648 CALL                             R6 1 1
     1649 SETTABLEKS                       R6 R5 K8 ["id"]
     1651 DUPTABLE                         R6 K618 [{["RoleName"] = "elephant"}]
     1652 SETTABLEKS                       R6 R5 K18 ["metaData"]
     1654 DUPTABLE                         R6 K621 [{["id"], ["eventType"] = 129, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 184471267}]
     1655 LOADN                            R8 130
     1656 FASTCALL1                        TOSTRING R8 ; [+2]
     1657 GETIMPORT                        R7 K23 [tostring]
     1659 CALL                             R7 1 1
     1660 SETTABLEKS                       R7 R6 K8 ["id"]
     1662 DUPTABLE                         R7 K618 [{["RoleName"] = "elephant"}]
     1663 SETTABLEKS                       R7 R6 K18 ["metaData"]
     1665 DUPTABLE                         R7 K624 [{["id"], ["eventType"] = 130, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 186891222}]
     1666 LOADN                            R9 131
     1667 FASTCALL1                        TOSTRING R9 ; [+2]
     1668 GETIMPORT                        R8 K23 [tostring]
     1670 CALL                             R8 1 1
     1671 SETTABLEKS                       R8 R7 K8 ["id"]
     1673 DUPTABLE                         R8 K625 [{["RoleName"] = "rhino"}]
     1674 SETTABLEKS                       R8 R7 K18 ["metaData"]
     1676 DUPTABLE                         R8 K628 [{["id"], ["eventType"] = 131, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 187804936}]
     1677 LOADN                            R10 132
     1678 FASTCALL1                        TOSTRING R10 ; [+2]
     1679 GETIMPORT                        R9 K23 [tostring]
     1681 CALL                             R9 1 1
     1682 SETTABLEKS                       R9 R8 K8 ["id"]
     1684 DUPTABLE                         R9 K631 [{["OldRoleName"] = "panda", ["NewRoleName"] = "rabbit"}]
     1685 SETTABLEKS                       R9 R8 K18 ["metaData"]
     1687 DUPTABLE                         R9 K634 [{["id"], ["eventType"] = 132, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 188595570}]
     1688 LOADN                            R11 133
     1689 FASTCALL1                        TOSTRING R11 ; [+2]
     1690 GETIMPORT                        R10 K23 [tostring]
     1692 CALL                             R10 1 1
     1693 SETTABLEKS                       R10 R9 K8 ["id"]
     1695 NEWTABLE                         R10 0 0
     1697 SETTABLEKS                       R10 R9 K18 ["metaData"]
     1699 DUPTABLE                         R10 K637 [{["id"], ["eventType"] = 133, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 188909583}]
     1700 LOADN                            R12 134
     1701 FASTCALL1                        TOSTRING R12 ; [+2]
     1702 GETIMPORT                        R11 K23 [tostring]
     1704 CALL                             R11 1 1
     1705 SETTABLEKS                       R11 R10 K8 ["id"]
     1707 NEWTABLE                         R11 0 0
     1709 SETTABLEKS                       R11 R10 K18 ["metaData"]
     1711 DUPTABLE                         R11 K640 [{["id"], ["eventType"] = 134, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 190610838}]
     1712 LOADN                            R13 135
     1713 FASTCALL1                        TOSTRING R13 ; [+2]
     1714 GETIMPORT                        R12 K23 [tostring]
     1716 CALL                             R12 1 1
     1717 SETTABLEKS                       R12 R11 K8 ["id"]
     1719 NEWTABLE                         R12 0 0
     1721 SETTABLEKS                       R12 R11 K18 ["metaData"]
     1723 DUPTABLE                         R12 K643 [{["id"], ["eventType"] = 135, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 190615370}]
     1724 LOADN                            R14 136
     1725 FASTCALL1                        TOSTRING R14 ; [+2]
     1726 GETIMPORT                        R13 K23 [tostring]
     1728 CALL                             R13 1 1
     1729 SETTABLEKS                       R13 R12 K8 ["id"]
     1731 NEWTABLE                         R13 0 0
     1733 SETTABLEKS                       R13 R12 K18 ["metaData"]
     1735 DUPTABLE                         R13 K646 [{["id"], ["eventType"] = 136, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 190704106}]
     1736 LOADN                            R15 137
     1737 FASTCALL1                        TOSTRING R15 ; [+2]
     1738 GETIMPORT                        R14 K23 [tostring]
     1740 CALL                             R14 1 1
     1741 SETTABLEKS                       R14 R13 K8 ["id"]
     1743 DUPTABLE                         R14 K647 [{["RoleName"] = "whale"}]
     1744 SETTABLEKS                       R14 R13 K18 ["metaData"]
     1746 DUPTABLE                         R14 K650 [{["id"], ["eventType"] = 137, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 190710316}]
     1747 LOADN                            R16 138
     1748 FASTCALL1                        TOSTRING R16 ; [+2]
     1749 GETIMPORT                        R15 K23 [tostring]
     1751 CALL                             R15 1 1
     1752 SETTABLEKS                       R15 R14 K8 ["id"]
     1754 DUPTABLE                         R15 K651 [{["RoleName"] = "fox"}]
     1755 SETTABLEKS                       R15 R14 K18 ["metaData"]
     1757 DUPTABLE                         R15 K654 [{["id"], ["eventType"] = 138, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 190792280}]
     1758 LOADN                            R17 139
     1759 FASTCALL1                        TOSTRING R17 ; [+2]
     1760 GETIMPORT                        R16 K23 [tostring]
     1762 CALL                             R16 1 1
     1763 SETTABLEKS                       R16 R15 K8 ["id"]
     1765 DUPTABLE                         R16 K656 [{["GroupSettings"] = "shark"}]
     1766 SETTABLEKS                       R16 R15 K18 ["metaData"]
     1768 DUPTABLE                         R16 K659 [{["id"], ["eventType"] = 139, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 190803493}]
     1769 LOADN                            R18 140
     1770 FASTCALL1                        TOSTRING R18 ; [+2]
     1771 GETIMPORT                        R17 K23 [tostring]
     1773 CALL                             R17 1 1
     1774 SETTABLEKS                       R17 R16 K8 ["id"]
     1776 DUPTABLE                         R17 K661 [{["GroupSettings"] = "zebra", ["NewGroupName"] = "tiger"}]
     1777 SETTABLEKS                       R17 R16 K18 ["metaData"]
     1779 DUPTABLE                         R17 K664 [{["id"], ["eventType"] = 140, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 190812970}]
     1780 LOADN                            R19 141
     1781 FASTCALL1                        TOSTRING R19 ; [+2]
     1782 GETIMPORT                        R18 K23 [tostring]
     1784 CALL                             R18 1 1
     1785 SETTABLEKS                       R18 R17 K8 ["id"]
     1787 DUPTABLE                         R18 K665 [{["GroupSettings"] = "giraffe"}]
     1788 SETTABLEKS                       R18 R17 K18 ["metaData"]
     1790 DUPTABLE                         R18 K668 [{["id"], ["eventType"] = 141, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 190817007}]
     1791 LOADN                            R20 142
     1792 FASTCALL1                        TOSTRING R20 ; [+2]
     1793 GETIMPORT                        R19 K23 [tostring]
     1795 CALL                             R19 1 1
     1796 SETTABLEKS                       R19 R18 K8 ["id"]
     1798 DUPTABLE                         R19 K669 [{["GroupSettings"] = "cheetah"}]
     1799 SETTABLEKS                       R19 R18 K18 ["metaData"]
     1801 DUPTABLE                         R19 K672 [{["id"], ["eventType"] = 142, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 190823868}]
     1802 LOADN                            R21 143
     1803 FASTCALL1                        TOSTRING R21 ; [+2]
     1804 GETIMPORT                        R20 K23 [tostring]
     1806 CALL                             R20 1 1
     1807 SETTABLEKS                       R20 R19 K8 ["id"]
     1809 DUPTABLE                         R20 K674 [{["UserName"] = "tiger"}]
     1810 SETTABLEKS                       R20 R19 K18 ["metaData"]
     1812 DUPTABLE                         R20 K677 [{["id"], ["eventType"] = 143, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 190823880}]
     1813 LOADN                            R22 144
     1814 FASTCALL1                        TOSTRING R22 ; [+2]
     1815 GETIMPORT                        R21 K23 [tostring]
     1817 CALL                             R21 1 1
     1818 SETTABLEKS                       R21 R20 K8 ["id"]
     1820 DUPTABLE                         R21 K678 [{["UserName"] = "dog"}]
     1821 SETTABLEKS                       R21 R20 K18 ["metaData"]
     1823 SETLIST                          R4 R5 16 [129]
     1825 DUPTABLE                         R5 K681 [{["id"], ["eventType"] = 144, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 190825598}]
     1826 LOADN                            R7 145
     1827 FASTCALL1                        TOSTRING R7 ; [+2]
     1828 GETIMPORT                        R6 K23 [tostring]
     1830 CALL                             R6 1 1
     1831 SETTABLEKS                       R6 R5 K8 ["id"]
     1833 DUPTABLE                         R6 K682 [{["GroupName"] = "kangaroo"}]
     1834 SETTABLEKS                       R6 R5 K18 ["metaData"]
     1836 DUPTABLE                         R6 K684 [{["id"], ["eventType"] = 145, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 190825690}]
     1837 LOADN                            R8 146
     1838 FASTCALL1                        TOSTRING R8 ; [+2]
     1839 GETIMPORT                        R7 K23 [tostring]
     1841 CALL                             R7 1 1
     1842 SETTABLEKS                       R7 R6 K8 ["id"]
     1844 DUPTABLE                         R7 K686 [{["CommitMessage"] = "dolphin", ["CommitId"] = "koala", ["NumberOfScripts"] = 10, ["Scripts"]}]
     1845 NEWTABLE                         R8 0 1
     1847 DUPTABLE                         R9 K687 [{["Name"] = "Name", ["FullName"] = "FullName"}]
     1848 SETLIST                          R8 R9 1 [1]
     1850 SETTABLEKS                       R8 R7 K40 ["Scripts"]
     1852 SETTABLEKS                       R7 R6 K18 ["metaData"]
     1854 DUPTABLE                         R7 K690 [{["id"], ["eventType"] = 146, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 190825857}]
     1855 LOADN                            R9 147
     1856 FASTCALL1                        TOSTRING R9 ; [+2]
     1857 GETIMPORT                        R8 K23 [tostring]
     1859 CALL                             R8 1 1
     1860 SETTABLEKS                       R8 R7 K8 ["id"]
     1862 DUPTABLE                         R8 K694 [{["RoleName"] = "owl", ["UniverseName"] = "cat", ["GroupName"] = "hippo", ["Permissions"] = "[\"Universe.GranularPlayer\",\"Universe.GranularEditor\",\"Universe.GranularPublisher\"]"}]
     1863 SETTABLEKS                       R8 R7 K18 ["metaData"]
     1865 DUPTABLE                         R8 K697 [{["id"], ["eventType"] = 147, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 190825861}]
     1866 LOADN                            R10 148
     1867 FASTCALL1                        TOSTRING R10 ; [+2]
     1868 GETIMPORT                        R9 K23 [tostring]
     1870 CALL                             R9 1 1
     1871 SETTABLEKS                       R9 R8 K8 ["id"]
     1873 DUPTABLE                         R9 K699 [{["experienceName"] = "penguin"}]
     1874 SETTABLEKS                       R9 R8 K18 ["metaData"]
     1876 DUPTABLE                         R9 K702 [{["id"], ["eventType"] = 148, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 190825862}]
     1877 LOADN                            R11 149
     1878 FASTCALL1                        TOSTRING R11 ; [+2]
     1879 GETIMPORT                        R10 K23 [tostring]
     1881 CALL                             R10 1 1
     1882 SETTABLEKS                       R10 R9 K8 ["id"]
     1884 DUPTABLE                         R10 K704 [{["experienceName"] = "otter"}]
     1885 SETTABLEKS                       R10 R9 K18 ["metaData"]
     1887 DUPTABLE                         R10 K707 [{["id"], ["eventType"] = 149, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 190825863}]
     1888 LOADN                            R12 150
     1889 FASTCALL1                        TOSTRING R12 ; [+2]
     1890 GETIMPORT                        R11 K23 [tostring]
     1892 CALL                             R11 1 1
     1893 SETTABLEKS                       R11 R10 K8 ["id"]
     1895 DUPTABLE                         R11 K711 [{["placeName"] = "seal", ["experienceName"] = "walrus"}]
     1896 SETTABLEKS                       R11 R10 K18 ["metaData"]
     1898 DUPTABLE                         R11 K714 [{["id"], ["eventType"] = 150, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 190825864}]
     1899 LOADN                            R13 151
     1900 FASTCALL1                        TOSTRING R13 ; [+2]
     1901 GETIMPORT                        R12 K23 [tostring]
     1903 CALL                             R12 1 1
     1904 SETTABLEKS                       R12 R11 K8 ["id"]
     1906 DUPTABLE                         R12 K718 [{["assetName"] = "narwhal", ["infractionType"] = "eagle"}]
     1907 SETTABLEKS                       R12 R11 K18 ["metaData"]
     1909 DUPTABLE                         R12 K721 [{["id"], ["eventType"] = 151, ["userId"] = 1511969967, ["universeId"] = 1849021714, ["placeId"] = 5279580942, ["resourceId"] = 12345678, ["metaData"], ["createdUnixTimeMs"] = 190825865}]
     1910 LOADN                            R22 152
     1911 FASTCALL1                        TOSTRING R22 ; [+2]
     1912 GETIMPORT                        R21 K23 [tostring]
     1914 CALL                             R21 1 1
     1915 SETTABLEKS                       R21 R12 K8 ["id"]
     1917 DUPTABLE                         R21 K724 [{["OldName"] = "kangaroo", ["NewName"] = "rabbit", ["SourceUniverseId"] = "tiger", ["NewUniverseId"] = "bear"}]
     1918 SETTABLEKS                       R21 R12 K18 ["metaData"]
     1920 SETLIST                          R4 R5 8 [145]
     1922 DUPTABLE                         R5 K727 [{"MockActivityHistoryEvents", "MockDraftEvents"}]
     1923 SETTABLEKS                       R4 R5 K725 ["MockActivityHistoryEvents"]
     1925 SETTABLEKS                       R3 R5 K726 ["MockDraftEvents"]
     1927 RETURN                           R5 1
