PROTO_0:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["integrations cannot be nil"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 NEWTABLE                         R1 0 0
        9 MOVE                             R2 R0
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETTABLEKS                       R7 R6 K3 ["label"]
       15 SETTABLE                         R6 R1 R7
       16 FORGLOOP                         R2 2 ; [-4]
       18 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["get"]
       10 CALL                             R1 0 1
       11 GETTABLEKS                       R1 R1 K2 ["EventLogger"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K0 ["current"]
       16 JUMPIF                           R2 ; [+41]
       17 GETUPVAL                         R2 1
       18 LOADNIL                          R3
       19 LOADNIL                          R4
       20 FORGPREP                         R2
       21 GETUPVAL                         R9 3
       22 GETTABLEKS                       R10 R6 K3 ["label"]
       24 GETTABLE                         R8 R9 R10
       25 JUMPIFEQKB                       R8 TRUE ; [+2]
       27 LOADB                            R7 0 +1
       28 LOADB                            R7 1
       29 GETTABLEKS                       R8 R1 K4 ["logIntegrationEvent"]
       31 DUPTABLE                         R9 K7 [{"action", "label", "url"}]
       32 JUMPIFNOT                        R7 ; [+4]
       33 GETUPVAL                         R10 4
       34 GETTABLEKS                       R10 R10 K8 ["LoadedDisabled"]
       36 JUMP                             ; [+3]
       37 GETUPVAL                         R10 4
       38 GETTABLEKS                       R10 R10 K9 ["LoadedEnabled"]
       40 SETTABLEKS                       R10 R9 K5 ["action"]
       42 GETTABLEKS                       R10 R6 K3 ["label"]
       44 SETTABLEKS                       R10 R9 K3 ["label"]
       46 GETTABLEKS                       R10 R6 K6 ["url"]
       48 SETTABLEKS                       R10 R9 K6 ["url"]
       50 CALL                             R8 1 0
       51 FORGLOOP                         R2 2 ; [-31]
       53 GETUPVAL                         R2 0
       54 GETUPVAL                         R3 1
       55 SETTABLEKS                       R3 R2 K0 ["current"]
       57 RETURN                           R0 0
       58 JUMPIFNOTEQKNIL                  R0 ; [+6]
       60 GETUPVAL                         R2 0
       61 GETUPVAL                         R3 1
       62 SETTABLEKS                       R3 R2 K0 ["current"]
       64 RETURN                           R0 0
       65 FASTCALL2K                       ASSERT R0 K10 ; [+5]
       67 MOVE                             R4 R0
       68 LOADK                            R5 K10 ["integrations cannot be nil"]
       69 GETIMPORT                        R3 K12 [assert]
       71 CALL                             R3 2 0
       72 NEWTABLE                         R3 0 0
       74 MOVE                             R4 R0
       75 LOADNIL                          R5
       76 LOADNIL                          R6
       77 FORGPREP                         R4
       78 GETTABLEKS                       R9 R8 K3 ["label"]
       80 SETTABLE                         R8 R3 R9
       81 FORGLOOP                         R4 2 ; [-4]
       83 MOVE                             R2 R3
       84 GETUPVAL                         R4 1
       85 FASTCALL2K                       ASSERT R4 K10 ; [+5]
       87 MOVE                             R6 R4
       88 LOADK                            R7 K10 ["integrations cannot be nil"]
       89 GETIMPORT                        R5 K12 [assert]
       91 CALL                             R5 2 0
       92 NEWTABLE                         R5 0 0
       94 MOVE                             R6 R4
       95 LOADNIL                          R7
       96 LOADNIL                          R8
       97 FORGPREP                         R6
       98 GETTABLEKS                       R11 R10 K3 ["label"]
      100 SETTABLE                         R10 R5 R11
      101 FORGLOOP                         R6 2 ; [-4]
      103 MOVE                             R3 R5
      104 MOVE                             R4 R3
      105 LOADNIL                          R5
      106 LOADNIL                          R6
      107 FORGPREP                         R4
      108 GETTABLE                         R9 R2 R7
      109 JUMPIF                           R9 ; [+15]
      110 GETTABLEKS                       R9 R1 K4 ["logIntegrationEvent"]
      112 DUPTABLE                         R10 K7 [{"action", "label", "url"}]
      113 GETUPVAL                         R11 4
      114 GETTABLEKS                       R11 R11 K13 ["Added"]
      116 SETTABLEKS                       R11 R10 K5 ["action"]
      118 SETTABLEKS                       R7 R10 K3 ["label"]
      120 GETTABLEKS                       R11 R8 K6 ["url"]
      122 SETTABLEKS                       R11 R10 K6 ["url"]
      124 CALL                             R9 1 0
      125 FORGLOOP                         R4 2 ; [-18]
      127 MOVE                             R4 R2
      128 LOADNIL                          R5
      129 LOADNIL                          R6
      130 FORGPREP                         R4
      131 GETTABLE                         R9 R3 R7
      132 JUMPIF                           R9 ; [+15]
      133 GETTABLEKS                       R9 R1 K4 ["logIntegrationEvent"]
      135 DUPTABLE                         R10 K7 [{"action", "label", "url"}]
      136 GETUPVAL                         R11 4
      137 GETTABLEKS                       R11 R11 K14 ["Deleted"]
      139 SETTABLEKS                       R11 R10 K5 ["action"]
      141 SETTABLEKS                       R7 R10 K3 ["label"]
      143 GETTABLEKS                       R11 R8 K6 ["url"]
      145 SETTABLEKS                       R11 R10 K6 ["url"]
      147 CALL                             R9 1 0
      148 FORGLOOP                         R4 2 ; [-18]
      150 GETUPVAL                         R4 0
      151 GETUPVAL                         R5 1
      152 SETTABLEKS                       R5 R4 K0 ["current"]
      154 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useRef"]
        3 LOADNIL                          R3
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U2
       14 NEWTABLE                         R5 0 2
       16 MOVE                             R6 R0
       17 MOVE                             R7 R1
       18 SETLIST                          R5 R6 2 [1]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["IntegrationManagement"]
       20 GETTABLEKS                       R3 R3 K10 ["IntegrationTypes"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Parent"]
       27 GETTABLEKS                       R4 R4 K12 ["React"]
       29 CALL                             R3 1 1
       30 DUPTABLE                         R4 K17 [{"Added", "Deleted", "LoadedEnabled", "LoadedDisabled"}]
       31 LOADK                            R5 K18 ["INTEGRATION_ADDED"]
       32 SETTABLEKS                       R5 R4 K13 ["Added"]
       34 LOADK                            R5 K19 ["INTEGRATION_DELETED"]
       35 SETTABLEKS                       R5 R4 K14 ["Deleted"]
       37 LOADK                            R5 K20 ["INTEGRATION_LOADED_ENABLED"]
       38 SETTABLEKS                       R5 R4 K15 ["LoadedEnabled"]
       40 LOADK                            R5 K21 ["INTEGRATION_LOADED_DISABLED"]
       41 SETTABLEKS                       R5 R4 K16 ["LoadedDisabled"]
       43 DUPCLOSURE                       R5 K22 [PROTO_0]
       44 DUPCLOSURE                       R6 K23 [PROTO_2]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R4
       48 RETURN                           R6 1
