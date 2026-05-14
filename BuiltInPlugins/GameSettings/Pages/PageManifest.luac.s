MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["PermissionsPage"]
        9 GETTABLEKS                       R1 R1 K6 ["Permissions"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K7 ["AvatarPage"]
       20 GETTABLEKS                       R2 R2 K8 ["Avatar"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R3 K3 [script]
       27 GETTABLEKS                       R3 R3 K4 ["Parent"]
       29 GETTABLEKS                       R3 R3 K9 ["BasicInfoPage"]
       31 GETTABLEKS                       R3 R3 K10 ["BasicInfo"]
       33 CALL                             R2 1 1
       34 GETIMPORT                        R3 K1 [require]
       36 GETIMPORT                        R4 K3 [script]
       38 GETTABLEKS                       R4 R4 K4 ["Parent"]
       40 GETTABLEKS                       R4 R4 K11 ["MonetizationPage"]
       42 GETTABLEKS                       R4 R4 K12 ["Monetization"]
       44 CALL                             R3 1 1
       45 GETIMPORT                        R4 K1 [require]
       47 GETIMPORT                        R5 K3 [script]
       49 GETTABLEKS                       R5 R5 K4 ["Parent"]
       51 GETTABLEKS                       R5 R5 K13 ["OptionsPage"]
       53 GETTABLEKS                       R5 R5 K14 ["Options"]
       55 CALL                             R4 1 1
       56 GETIMPORT                        R5 K1 [require]
       58 GETIMPORT                        R6 K3 [script]
       60 GETTABLEKS                       R6 R6 K4 ["Parent"]
       62 GETTABLEKS                       R6 R6 K15 ["PlacesPage"]
       64 GETTABLEKS                       R6 R6 K16 ["Places"]
       66 CALL                             R5 1 1
       67 GETIMPORT                        R6 K1 [require]
       69 GETIMPORT                        R7 K3 [script]
       71 GETTABLEKS                       R7 R7 K4 ["Parent"]
       73 GETTABLEKS                       R7 R7 K17 ["SecurityPage"]
       75 GETTABLEKS                       R7 R7 K18 ["Security"]
       77 CALL                             R6 1 1
       78 GETIMPORT                        R7 K1 [require]
       80 GETIMPORT                        R8 K3 [script]
       82 GETTABLEKS                       R8 R8 K4 ["Parent"]
       84 GETTABLEKS                       R8 R8 K19 ["WorldPage"]
       86 GETTABLEKS                       R8 R8 K20 ["World"]
       88 CALL                             R7 1 1
       89 GETIMPORT                        R8 K1 [require]
       91 GETIMPORT                        R9 K3 [script]
       93 GETTABLEKS                       R9 R9 K4 ["Parent"]
       95 GETTABLEKS                       R9 R9 K21 ["LocalizationPage"]
       97 GETTABLEKS                       R9 R9 K22 ["Localization"]
       99 CALL                             R8 1 1
      100 GETIMPORT                        R9 K1 [require]
      102 GETIMPORT                        R10 K3 [script]
      104 GETTABLEKS                       R10 R10 K4 ["Parent"]
      106 GETTABLEKS                       R10 R10 K23 ["CommunicationPage"]
      108 GETTABLEKS                       R10 R10 K24 ["Communication"]
      110 CALL                             R9 1 1
      111 GETIMPORT                        R10 K26 [game]
      113 LOADK                            R12 K27 ["RemoveGameSettingsPermissionsPage"]
      114 NAMECALL                         R10 R10 K28 ["GetFastFlag"]
      116 CALL                             R10 2 1
      117 GETIMPORT                        R11 K26 [game]
      119 LOADK                            R13 K29 ["BringCommunicationPageToTop"]
      120 NAMECALL                         R11 R11 K28 ["GetFastFlag"]
      122 CALL                             R11 2 1
      123 JUMPIFNOT                        R11 ; [+14]
      124 NEWTABLE                         R12 0 9
      126 MOVE                             R13 R2
      127 MOVE                             R14 R9
      128 MOVE                             R15 R3
      129 MOVE                             R16 R6
      130 MOVE                             R17 R5
      131 MOVE                             R18 R8
      132 MOVE                             R19 R1
      133 MOVE                             R20 R7
      134 MOVE                             R21 R4
      135 SETLIST                          R12 R13 9 [1]
      137 RETURN                           R12 1
      138 JUMPIFNOT                        R10 ; [+14]
      139 NEWTABLE                         R12 0 9
      141 MOVE                             R13 R2
      142 MOVE                             R14 R3
      143 MOVE                             R15 R6
      144 MOVE                             R16 R5
      145 MOVE                             R17 R8
      146 MOVE                             R18 R1
      147 MOVE                             R19 R7
      148 MOVE                             R20 R4
      149 MOVE                             R21 R9
      150 SETLIST                          R12 R13 9 [1]
      152 RETURN                           R12 1
      153 NEWTABLE                         R12 0 10
      155 MOVE                             R13 R2
      156 MOVE                             R14 R0
      157 MOVE                             R15 R3
      158 MOVE                             R16 R6
      159 MOVE                             R17 R5
      160 MOVE                             R18 R8
      161 MOVE                             R19 R1
      162 MOVE                             R20 R7
      163 MOVE                             R21 R4
      164 MOVE                             R22 R9
      165 SETLIST                          R12 R13 10 [1]
      167 RETURN                           R12 1
