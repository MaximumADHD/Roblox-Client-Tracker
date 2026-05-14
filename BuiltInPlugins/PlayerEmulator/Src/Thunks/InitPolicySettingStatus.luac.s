PROTO_0:
        0 LOADK                            R3 K0 ["^%l"]
        1 GETIMPORT                        R4 K3 [string.upper]
        3 NAMECALL                         R1 R0 K4 ["gsub"]
        5 CALL                             R1 3 1
        6 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETUPVAL                         R3 0
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K0 ["POLICY_SETTING_KEY"]
        8 NAMECALL                         R3 R3 K1 ["GetSetting"]
       10 CALL                             R3 2 1
       11 JUMPIF                           R3 ; [+2]
       12 NEWTABLE                         R3 0 0
       14 GETIMPORT                        R4 K3 [pairs]
       16 GETUPVAL                         R5 2
       17 CALL                             R4 1 3
       18 FORGPREP_NEXT                    R4
       19 FASTCALL1                        TYPE R8 ; [+3]
       20 MOVE                             R10 R8
       21 GETIMPORT                        R9 K5 [type]
       23 CALL                             R9 1 1
       24 JUMPIFNOTEQKS                    R9 K6 ["table"] ; [+5]
       26 GETIMPORT                        R9 K8 [table.sort]
       28 MOVE                             R10 R8
       29 CALL                             R9 1 0
       30 LOADK                            R11 K9 ["^%l"]
       31 GETIMPORT                        R12 K12 [string.upper]
       33 NAMECALL                         R9 R7 K13 ["gsub"]
       35 CALL                             R9 3 1
       36 SETTABLE                         R8 R1 R9
       37 LOADK                            R12 K9 ["^%l"]
       38 GETIMPORT                        R13 K12 [string.upper]
       40 NAMECALL                         R10 R7 K13 ["gsub"]
       42 CALL                             R10 3 1
       43 GETTABLE                         R9 R3 R10
       44 JUMPIFEQKNIL                     R9 ; [+16]
       46 LOADK                            R11 K9 ["^%l"]
       47 GETIMPORT                        R12 K12 [string.upper]
       49 NAMECALL                         R9 R7 K13 ["gsub"]
       51 CALL                             R9 3 1
       52 LOADK                            R13 K9 ["^%l"]
       53 GETIMPORT                        R14 K12 [string.upper]
       55 NAMECALL                         R11 R7 K13 ["gsub"]
       57 CALL                             R11 3 1
       58 GETTABLE                         R10 R3 R11
       59 SETTABLE                         R10 R2 R9
       60 JUMP                             ; [+21]
       61 GETUPVAL                         R10 3
       62 GETTABLE                         R9 R10 R7
       63 JUMPIFEQKNIL                     R9 ; [+11]
       65 LOADK                            R11 K9 ["^%l"]
       66 GETIMPORT                        R12 K12 [string.upper]
       68 NAMECALL                         R9 R7 K13 ["gsub"]
       70 CALL                             R9 3 1
       71 GETUPVAL                         R11 3
       72 GETTABLE                         R10 R11 R7
       73 SETTABLE                         R10 R2 R9
       74 JUMP                             ; [+7]
       75 LOADK                            R11 K9 ["^%l"]
       76 GETIMPORT                        R12 K12 [string.upper]
       78 NAMECALL                         R9 R7 K13 ["gsub"]
       80 CALL                             R9 3 1
       81 SETTABLE                         R8 R2 R9
       82 FORGLOOP                         R4 2 ; [-64]
       84 GETUPVAL                         R4 4
       85 GETTABLEKS                       R4 R4 K14 ["Dictionary"]
       87 GETTABLEKS                       R4 R4 K15 ["keys"]
       89 MOVE                             R5 R1
       90 CALL                             R4 1 1
       91 GETIMPORT                        R5 K8 [table.sort]
       93 MOVE                             R6 R4
       94 CALL                             R5 1 0
       95 GETUPVAL                         R7 5
       96 MOVE                             R8 R1
       97 MOVE                             R9 R4
       98 CALL                             R7 2 -1
       99 NAMECALL                         R5 R0 K16 ["dispatch"]
      101 CALL                             R5 -1 0
      102 GETUPVAL                         R5 6
      103 MOVE                             R7 R2
      104 NAMECALL                         R5 R5 K17 ["SetEmulatedPolicyInfo"]
      106 CALL                             R5 2 0
      107 GETUPVAL                         R7 7
      108 MOVE                             R8 R2
      109 CALL                             R7 1 -1
      110 NAMECALL                         R5 R0 K16 ["dispatch"]
      112 CALL                             R5 -1 0
      113 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R2
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PlayerEmulatorService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Cryo"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K11 ["Src"]
       26 GETTABLEKS                       R4 R4 K12 ["Util"]
       28 GETTABLEKS                       R4 R4 K13 ["Constants"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K8 [require]
       33 GETTABLEKS                       R5 R1 K11 ["Src"]
       35 GETTABLEKS                       R5 R5 K14 ["Actions"]
       37 GETTABLEKS                       R5 R5 K15 ["UpdatePolicySettingStatus"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K8 [require]
       42 GETTABLEKS                       R6 R1 K11 ["Src"]
       44 GETTABLEKS                       R6 R6 K14 ["Actions"]
       46 GETTABLEKS                       R6 R6 K16 ["LoadAllPolicyValues"]
       48 CALL                             R5 1 1
       49 DUPCLOSURE                       R6 K17 [PROTO_0]
       50 DUPCLOSURE                       R7 K18 [PROTO_2]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R4
       56 RETURN                           R7 1
