PROTO_0:
        0 GETIMPORT                        R2 K2 [DateTime.fromIsoDate]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 JUMPIF                           R2 ; [+6]
        5 GETIMPORT                        R3 K4 [warn]
        7 LOADK                            R4 K5 ["Invalid date string provided"]
        8 CALL                             R3 1 0
        9 LOADK                            R3 K6 [""]
       10 RETURN                           R3 1
       11 LOADK                            R5 K7 ["ll"]
       12 GETUPVAL                         R7 0
       13 JUMPIFNOT                        R7 ; [+6]
       14 JUMPIFEQKS                       R1 K6 [""] ; [+3]
       16 MOVE                             R6 R1
       17 JUMP                             ; [+3]
       18 LOADK                            R6 K8 ["en-us"]
       19 JUMP                             ; [+1]
       20 MOVE                             R6 R1
       21 NAMECALL                         R3 R2 K9 ["FormatLocalTime"]
       23 CALL                             R3 3 -1
       24 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AssetPickerFixLocaleError"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 1
        8 DUPCLOSURE                       R1 K4 [PROTO_0]
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1
