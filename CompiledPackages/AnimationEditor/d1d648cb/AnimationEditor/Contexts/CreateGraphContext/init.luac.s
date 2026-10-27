PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETUPVAL                         R1 1
        4 NOT                              R0 R1
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K0 ["selectedRigId"]
        9 JUMPIFNOTEQKNIL                  R1 ; [+2]
       11 LOADB                            R0 0 +1
       12 LOADB                            R0 1
       13 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeSelectedRig"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+6]
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 1
        9 JUMPIF                           R1 ; [+2]
       10 LOADNIL                          R1
       11 RETURN                           R1 1
       12 GETUPVAL                         R1 2
       13 LOADK                            R3 K1 ["CreateGraphContext.createNewGraphAsync"]
       14 LOADK                            R4 K2 ["Create new graph"]
       15 NAMECALL                         R1 R1 K3 ["TryBeginRecording"]
       17 CALL                             R1 3 1
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K4 ["createNewAnimationGraph"]
       21 MOVE                             R3 R0
       22 GETUPVAL                         R4 4
       23 LOADK                            R6 K5 ["Common"]
       24 LOADK                            R7 K6 ["AnimationEditor"]
       25 LOADK                            R8 K7 ["Menu"]
       26 LOADK                            R9 K8 ["GraphDefaultName"]
       27 NAMECALL                         R4 R4 K9 ["getExternalText"]
       29 CALL                             R4 5 -1
       30 CALL                             R2 -1 1
       31 JUMPIFNOT                        R2 ; [+25]
       32 GETUPVAL                         R3 5
       33 GETTABLEKS                       R3 R3 K10 ["updateGraphTimestamp"]
       35 MOVE                             R4 R2
       36 CALL                             R3 1 0
       37 GETUPVAL                         R3 1
       38 CALL                             R3 0 1
       39 JUMPIFNOT                        R3 ; [+6]
       40 GETUPVAL                         R3 6
       41 GETTABLEKS                       R3 R3 K11 ["setSelectedGraphInstance"]
       43 MOVE                             R4 R2
       44 CALL                             R3 1 0
       45 JUMP                             ; [+11]
       46 GETUPVAL                         R3 7
       47 GETTABLEKS                       R3 R3 K12 ["selectionService"]
       49 NEWTABLE                         R5 0 1
       51 MOVE                             R6 R2
       52 SETLIST                          R5 R6 1 [1]
       54 NAMECALL                         R3 R3 K13 ["Set"]
       56 CALL                             R3 2 0
       57 JUMPIFNOT                        R1 ; [+7]
       58 GETUPVAL                         R3 2
       59 MOVE                             R5 R1
       60 GETIMPORT                        R6 K17 [Enum.FinishRecordingOperation.Commit]
       62 NAMECALL                         R3 R3 K18 ["FinishRecording"]
       64 CALL                             R3 3 0
       65 JUMPIFNOT                        R2 ; [+6]
       66 GETUPVAL                         R3 8
       67 MOVE                             R5 R2
       68 NAMECALL                         R3 R3 K19 ["instanceToId"]
       70 CALL                             R3 2 1
       71 RETURN                           R3 1
       72 LOADNIL                          R3
       73 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeSelectedRig"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+5]
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 1
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 LOADK                            R2 K1 ["rbxassetid://%*"]
       12 MOVE                             R4 R0
       13 NAMECALL                         R2 R2 K2 ["format"]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 2
       17 MOVE                             R5 R2
       18 NAMECALL                         R3 R3 K3 ["GetAnimationClipAsync"]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 3
       22 MOVE                             R5 R2
       23 MOVE                             R6 R3
       24 MOVE                             R7 R1
       25 GETUPVAL                         R8 4
       26 GETTABLEKS                       R8 R8 K4 ["selectionService"]
       28 GETUPVAL                         R9 5
       29 CALL                             R4 5 0
       30 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["of"]
        5 LOADNIL                          R2
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["properties"]
       11 GETTABLEKS                       R1 R1 K2 ["observeString"]
       13 MOVE                             R2 R0
       14 LOADK                            R3 K3 ["Name"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["switchMap"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["observeSelectedRig"]
        6 DUPCLOSURE                       R2 K2 [PROTO_3]
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U2
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_5:
        0 DUPTABLE                         R0 K4 [{"canCreateGraph", "selectedTargetName", "createNewGraphAsync", "createGraphFromIdAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["canCreateGraph"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["selectedTargetName"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["createNewGraphAsync"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["createGraphFromIdAsync"]
       13 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R2 R2 K5 ["instanceRegistry"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K3 ["useContext"]
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K4 ["Context"]
       23 CALL                             R3 1 1
       24 GETUPVAL                         R5 4
       25 CALL                             R5 0 1
       26 JUMPIFNOT                        R5 ; [+10]
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K3 ["useContext"]
       30 GETUPVAL                         R5 5
       31 GETTABLEKS                       R5 R5 K4 ["Context"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R4 R4 K6 ["assetType"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R4
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K3 ["useContext"]
       41 GETUPVAL                         R6 6
       42 GETTABLEKS                       R6 R6 K4 ["Context"]
       44 CALL                             R5 1 1
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R6 R6 K3 ["useContext"]
       48 GETUPVAL                         R7 7
       49 GETTABLEKS                       R7 R7 K4 ["Context"]
       51 CALL                             R6 1 1
       52 GETUPVAL                         R8 8
       53 CALL                             R8 0 1
       54 JUMPIFNOT                        R8 ; [+8]
       55 GETUPVAL                         R7 1
       56 GETTABLEKS                       R7 R7 K3 ["useContext"]
       58 GETUPVAL                         R8 9
       59 GETTABLEKS                       R8 R8 K4 ["Context"]
       61 CALL                             R7 1 1
       62 JUMP                             ; [+1]
       63 LOADNIL                          R7
       64 GETUPVAL                         R9 8
       65 CALL                             R9 0 1
       66 JUMPIFNOT                        R9 ; [+8]
       67 GETUPVAL                         R8 1
       68 GETTABLEKS                       R8 R8 K3 ["useContext"]
       70 GETUPVAL                         R9 10
       71 GETTABLEKS                       R9 R9 K4 ["Context"]
       73 CALL                             R8 1 1
       74 JUMP                             ; [+1]
       75 LOADNIL                          R8
       76 GETUPVAL                         R10 8
       77 CALL                             R10 0 1
       78 JUMPIFNOT                        R10 ; [+3]
       79 GETTABLEKS                       R9 R7 K7 ["isPreviewRunning"]
       81 JUMP                             ; [+1]
       82 LOADNIL                          R9
       83 GETUPVAL                         R10 1
       84 GETTABLEKS                       R10 R10 K8 ["useMemo"]
       86 NEWCLOSURE                       R11 P0
       87 CAPTURE                          UPVAL U8
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R5
       90 NEWTABLE                         R12 0 2
       92 GETTABLEKS                       R13 R5 K9 ["selectedRigId"]
       94 MOVE                             R14 R9
       95 SETLIST                          R12 R13 2 [1]
       97 CALL                             R10 2 1
       98 GETUPVAL                         R11 1
       99 GETTABLEKS                       R11 R11 K10 ["useCallback"]
      101 NEWCLOSURE                       R12 P1
      102 CAPTURE                          VAL R5
      103 CAPTURE                          UPVAL U8
      104 CAPTURE                          UPVAL U11
      105 CAPTURE                          UPVAL U12
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R2
      111 NEWTABLE                         R13 0 6
      113 GETTABLEKS                       R14 R5 K11 ["observeSelectedRig"]
      115 MOVE                             R15 R1
      116 GETTABLEKS                       R16 R3 K12 ["selectionService"]
      118 GETTABLEKS                       R17 R6 K13 ["updateGraphTimestamp"]
      120 GETUPVAL                         R19 8
      121 CALL                             R19 0 1
      122 JUMPIFNOT                        R19 ; [+3]
      123 GETTABLEKS                       R18 R8 K14 ["setSelectedGraphInstance"]
      125 JUMP                             ; [+1]
      126 LOADNIL                          R18
      127 MOVE                             R19 R2
      128 SETLIST                          R13 R14 6 [1]
      130 CALL                             R11 2 1
      131 GETUPVAL                         R12 1
      132 GETTABLEKS                       R12 R12 K10 ["useCallback"]
      134 NEWCLOSURE                       R13 P2
      135 CAPTURE                          VAL R5
      136 CAPTURE                          UPVAL U8
      137 CAPTURE                          UPVAL U13
      138 CAPTURE                          UPVAL U14
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R4
      141 NEWTABLE                         R14 0 4
      143 GETTABLEKS                       R15 R5 K11 ["observeSelectedRig"]
      145 GETUPVAL                         R16 14
      146 GETTABLEKS                       R17 R3 K12 ["selectionService"]
      148 GETUPVAL                         R19 4
      149 CALL                             R19 0 1
      150 JUMPIFNOT                        R19 ; [+2]
      151 MOVE                             R18 R4
      152 JUMP                             ; [+1]
      153 LOADNIL                          R18
      154 SETLIST                          R14 R15 4 [1]
      156 CALL                             R12 2 1
      157 GETUPVAL                         R13 1
      158 GETTABLEKS                       R13 R13 K8 ["useMemo"]
      160 NEWCLOSURE                       R14 P3
      161 CAPTURE                          UPVAL U15
      162 CAPTURE                          VAL R5
      163 CAPTURE                          UPVAL U16
      164 NEWTABLE                         R15 0 1
      166 GETTABLEKS                       R16 R5 K11 ["observeSelectedRig"]
      168 SETLIST                          R15 R16 1 [1]
      170 CALL                             R13 2 1
      171 GETUPVAL                         R14 17
      172 GETTABLEKS                       R14 R14 K15 ["useSignalState"]
      174 MOVE                             R15 R13
      175 CALL                             R14 1 1
      176 GETUPVAL                         R15 1
      177 GETTABLEKS                       R15 R15 K8 ["useMemo"]
      179 NEWCLOSURE                       R16 P4
      180 CAPTURE                          VAL R10
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R12
      184 NEWTABLE                         R17 0 4
      186 MOVE                             R18 R10
      187 MOVE                             R19 R14
      188 MOVE                             R20 R11
      189 MOVE                             R21 R12
      190 SETLIST                          R17 R18 4 [1]
      192 CALL                             R15 2 1
      193 GETUPVAL                         R16 18
      194 GETTABLEKS                       R16 R16 K16 ["useReplicatedState"]
      196 LOADK                            R17 K17 ["CreateGraphContext_CanCreateGraph"]
      197 MOVE                             R18 R10
      198 CALL                             R16 2 0
      199 GETUPVAL                         R16 18
      200 GETTABLEKS                       R16 R16 K16 ["useReplicatedState"]
      202 LOADK                            R17 K18 ["CreateGraphContext_SelectedTargetName"]
      203 MOVE                             R18 R14
      204 CALL                             R16 2 0
      205 GETUPVAL                         R16 18
      206 GETTABLEKS                       R16 R16 K19 ["useBoundAction"]
      208 LOADK                            R17 K20 ["CreateGraphContext_CreateNewGraphAsync"]
      209 MOVE                             R18 R11
      210 CALL                             R16 2 0
      211 GETUPVAL                         R16 18
      212 GETTABLEKS                       R16 R16 K19 ["useBoundAction"]
      214 LOADK                            R17 K21 ["CreateGraphContext_CreateGraphFromIdAsync"]
      215 MOVE                             R18 R12
      216 CALL                             R16 2 0
      217 GETUPVAL                         R16 1
      218 GETTABLEKS                       R16 R16 K22 ["createElement"]
      220 GETUPVAL                         R17 19
      221 GETTABLEKS                       R17 R17 K23 ["Provider"]
      223 DUPTABLE                         R18 K25 [{"value"}]
      224 SETTABLEKS                       R15 R18 K24 ["value"]
      226 GETTABLEKS                       R19 R0 K26 ["children"]
      228 CALL                             R16 3 -1
      229 RETURN                           R16 -1

PROTO_7:
        0 DUPTABLE                         R0 K4 [{"canCreateGraph", "selectedTargetName", "createNewGraphAsync", "createGraphFromIdAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["canCreateGraph"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["selectedTargetName"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["createNewGraphAsync"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["createGraphFromIdAsync"]
       13 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["useContext"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["Context"]
        9 CALL                             R1 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 GETUPVAL                         R3 0
       13 CALL                             R3 0 1
       14 JUMPIFNOT                        R3 ; [+3]
       15 GETTABLEKS                       R2 R1 K2 ["isPreviewRunning"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K3 ["useReplicatedStateListener"]
       22 LOADK                            R4 K4 ["CreateGraphContext_CanCreateGraph"]
       23 LOADB                            R5 0
       24 CALL                             R3 2 1
       25 GETUPVAL                         R4 0
       26 CALL                             R4 0 1
       27 JUMPIFNOT                        R4 ; [+2]
       28 JUMPIFNOT                        R2 ; [+1]
       29 LOADB                            R3 0
       30 GETUPVAL                         R4 3
       31 GETTABLEKS                       R4 R4 K3 ["useReplicatedStateListener"]
       33 LOADK                            R5 K5 ["CreateGraphContext_SelectedTargetName"]
       34 LOADNIL                          R6
       35 CALL                             R4 2 1
       36 GETUPVAL                         R5 3
       37 GETTABLEKS                       R5 R5 K6 ["useBoundAction"]
       39 LOADK                            R6 K7 ["CreateGraphContext_CreateNewGraphAsync"]
       40 CALL                             R5 1 1
       41 GETUPVAL                         R6 3
       42 GETTABLEKS                       R6 R6 K6 ["useBoundAction"]
       44 LOADK                            R7 K8 ["CreateGraphContext_CreateGraphFromIdAsync"]
       45 CALL                             R6 1 1
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R7 R7 K9 ["useMemo"]
       49 NEWCLOSURE                       R8 P0
       50 CAPTURE                          REF R3
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R6
       54 NEWTABLE                         R9 0 4
       56 MOVE                             R10 R3
       57 MOVE                             R11 R4
       58 MOVE                             R12 R5
       59 MOVE                             R13 R6
       60 SETLIST                          R9 R10 4 [1]
       62 CALL                             R7 2 1
       63 GETUPVAL                         R8 1
       64 GETTABLEKS                       R8 R8 K10 ["createElement"]
       66 GETUPVAL                         R9 4
       67 GETTABLEKS                       R9 R9 K11 ["Provider"]
       69 DUPTABLE                         R10 K13 [{"value"}]
       70 SETTABLEKS                       R7 R10 K12 ["value"]
       72 GETTABLEKS                       R11 R0 K14 ["children"]
       74 CALL                             R8 3 -1
       75 CLOSEUPVALS                      R3
       76 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["AnimationClipProvider"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["ChangeHistoryService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Parent"]
       23 GETTABLEKS                       R4 R4 K12 ["Framework"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K13 ["Contexts"]
       30 GETTABLEKS                       R5 R5 K14 ["GraphPlayedContext"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R0 K13 ["Contexts"]
       37 GETTABLEKS                       R6 R6 K15 ["GraphTimestampContext"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Contexts"]
       44 GETTABLEKS                       R7 R7 K16 ["InstanceRegistryContext"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R8 R0 K13 ["Contexts"]
       51 GETTABLEKS                       R8 R8 K17 ["NativeGraphContext"]
       53 GETTABLEKS                       R8 R8 K18 ["NativeGraphUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R9 R0 K19 ["Util"]
       60 GETTABLEKS                       R9 R9 K20 ["Networking"]
       62 GETTABLEKS                       R9 R9 K21 ["NetworkUtils"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETTABLEKS                       R10 R0 K11 ["Parent"]
       69 GETTABLEKS                       R10 R10 K22 ["NodeGraphing"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K10 [require]
       74 GETTABLEKS                       R11 R0 K13 ["Contexts"]
       76 GETTABLEKS                       R11 R11 K23 ["OpenableAssetTypeContext"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K10 [require]
       81 GETTABLEKS                       R12 R0 K11 ["Parent"]
       83 GETTABLEKS                       R12 R12 K24 ["React"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K10 [require]
       88 GETTABLEKS                       R13 R0 K13 ["Contexts"]
       90 GETTABLEKS                       R13 R13 K25 ["RigListContext"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K10 [require]
       95 GETTABLEKS                       R14 R0 K13 ["Contexts"]
       97 GETTABLEKS                       R14 R14 K26 ["SelectedGraphContext"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K10 [require]
      102 GETTABLEKS                       R15 R0 K13 ["Contexts"]
      104 GETTABLEKS                       R15 R15 K27 ["SelectionServiceContext"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K10 [require]
      109 GETTABLEKS                       R16 R0 K11 ["Parent"]
      111 GETTABLEKS                       R16 R16 K28 ["Signals"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K10 [require]
      116 GETTABLEKS                       R17 R0 K19 ["Util"]
      118 GETTABLEKS                       R17 R17 K28 ["Signals"]
      120 GETTABLEKS                       R17 R17 K29 ["SignalsInstanceUtils"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K10 [require]
      125 GETTABLEKS                       R18 R0 K11 ["Parent"]
      127 GETTABLEKS                       R18 R18 K30 ["SignalsReact"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K10 [require]
      132 GETTABLEKS                       R19 R0 K19 ["Util"]
      134 GETTABLEKS                       R19 R19 K28 ["Signals"]
      136 GETTABLEKS                       R19 R19 K31 ["TypedInstanceSignals"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K10 [require]
      141 GETTABLEKS                       R20 R0 K32 ["Types"]
      143 CALL                             R19 1 1
      144 GETIMPORT                        R20 K10 [require]
      146 GETTABLEKS                       R21 R0 K33 ["Flags"]
      148 GETTABLEKS                       R21 R21 K34 ["getFFlagAnimationEditorAnimationTypes"]
      150 CALL                             R20 1 1
      151 GETIMPORT                        R21 K10 [require]
      153 GETTABLEKS                       R22 R0 K13 ["Contexts"]
      155 GETTABLEKS                       R22 R22 K35 ["CreateGraphContext"]
      157 GETTABLEKS                       R22 R22 K36 ["ContextDefinition"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K10 [require]
      162 GETTABLEKS                       R23 R0 K33 ["Flags"]
      164 GETTABLEKS                       R23 R23 K37 ["getFFlagAnimGraphUI_RunTimeDebug"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K10 [require]
      169 GETTABLEKS                       R24 R0 K13 ["Contexts"]
      171 GETTABLEKS                       R24 R24 K35 ["CreateGraphContext"]
      173 GETTABLEKS                       R24 R24 K38 ["insertAnimationClip"]
      175 CALL                             R23 1 1
      176 GETTABLEKS                       R24 R21 K39 ["Context"]
      178 DUPTABLE                         R25 K44 [{["CAN_CREATE_GRAPH"] = "CreateGraphContext_CanCreateGraph", ["SELECTED_TARGET_NAME"] = "CreateGraphContext_SelectedTargetName"}]
      179 DUPTABLE                         R26 K49 [{["CREATE_NEW_GRAPH"] = "CreateGraphContext_CreateNewGraphAsync", ["CREATE_GRAPH_FROM_ID"] = "CreateGraphContext_CreateGraphFromIdAsync"}]
      180 DUPCLOSURE                       R27 K50 [PROTO_6]
      181 CAPTURE                          VAL R3
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R14
      185 CAPTURE                          VAL R20
      186 CAPTURE                          VAL R10
      187 CAPTURE                          VAL R12
      188 CAPTURE                          VAL R5
      189 CAPTURE                          VAL R22
      190 CAPTURE                          VAL R4
      191 CAPTURE                          VAL R13
      192 CAPTURE                          VAL R2
      193 CAPTURE                          VAL R7
      194 CAPTURE                          VAL R1
      195 CAPTURE                          VAL R23
      196 CAPTURE                          VAL R16
      197 CAPTURE                          VAL R18
      198 CAPTURE                          VAL R17
      199 CAPTURE                          VAL R8
      200 CAPTURE                          VAL R24
      201 DUPCLOSURE                       R28 K51 [PROTO_8]
      202 CAPTURE                          VAL R22
      203 CAPTURE                          VAL R11
      204 CAPTURE                          VAL R4
      205 CAPTURE                          VAL R8
      206 CAPTURE                          VAL R24
      207 DUPTABLE                         R29 K54 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      208 SETTABLEKS                       R24 R29 K39 ["Context"]
      210 SETTABLEKS                       R27 R29 K52 ["EditableDataModelProvider"]
      212 SETTABLEKS                       R28 R29 K53 ["UIDataModelProvider"]
      214 RETURN                           R29 1
