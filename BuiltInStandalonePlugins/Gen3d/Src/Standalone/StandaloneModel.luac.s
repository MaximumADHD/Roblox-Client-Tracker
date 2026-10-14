PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagGen3dTextureGenPersistPreferences"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["read"]
        8 GETUPVAL                         R1 2
        9 CALL                             R0 1 1
       10 RETURN                           R0 1
       11 NEWTABLE                         R0 0 0
       13 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagGen3dTextureGenPersistPreferences"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["apply"]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K2 ["state"]
       11 GETUPVAL                         R2 3
       12 CALL                             R0 2 1
       13 RETURN                           R0 1
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K2 ["state"]
       17 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Actions"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFFlagGen3dToggleActionUpdateAsync"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+5]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["current"]
        8 JUMPIF                           R0 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 2
       11 DUPCLOSURE                       R1 K2 [PROTO_4]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["actionTriggeredSignals"]
        3 GETTABLEN                        R0 R1 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 NAMECALL                         R1 R0 K1 ["Connect"]
       12 CALL                             R1 2 1
       13 NEWCLOSURE                       R2 P1
       14 CAPTURE                          VAL R1
       15 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["GetAsync"]
        8 CALL                             R0 2 1
        9 MOVE                             R1 R0
       10 JUMPIFNOT                        R1 ; [+1]
       11 GETTABLEN                        R1 R0 1
       12 JUMPIFNOT                        R1 ; [+4]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R3 R1 K1 ["Checked"]
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagGen3dToggleActionUpdateAsync"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R0 K1 ["Checkable"]
        6 JUMPIFNOTEQKB                    R2 FALSE ; [+7]
        8 JUMPIFNOT                        R1 ; [+4]
        9 GETUPVAL                         R2 1
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K2 ["current"]
       13 RETURN                           R0 0
       14 JUMPIF                           R1 ; [+5]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R3 R0 K3 ["Checked"]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0
       20 GETIMPORT                        R2 K6 [task.spawn]
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U2
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 NAMECALL                         R0 R0 K0 ["BindToChangedAsync"]
        4 CALL                             R0 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 NAMECALL                         R0 R0 K1 ["Connect"]
       13 CALL                             R0 2 1
       14 SETUPVAL                         R0 0
       15 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_12:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K2 [task.spawn]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CALL                             R1 1 0
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          REF R0
       13 CLOSEUPVALS                      R0
       14 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K3 [{[1], ["Checked"] = False}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["Uri"]
        5 NAMECALL                         R0 R0 K4 ["UpdateAsync"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 2
        9 LOADB                            R1 0
       10 SETTABLEKS                       R1 R0 K5 ["current"]
       12 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["kind"]
        3 LOADB                            R1 1
        4 JUMPIFEQKS                       R0 K1 ["single"] ; [+5]
        6 JUMPIFEQKS                       R0 K2 ["multi"] ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 JUMPIF                           R1 ; [+4]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["current"]
       14 JUMPIF                           R2 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K4 ["getFFlagGen3dToggleActionUpdateAsync"]
       19 CALL                             R2 0 1
       20 JUMPIF                           R2 ; [+11]
       21 GETUPVAL                         R2 3
       22 LOADB                            R3 1
       23 SETTABLEKS                       R3 R2 K3 ["current"]
       25 GETIMPORT                        R2 K7 [task.spawn]
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U5
       30 CALL                             R2 1 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R2 6
       33 GETTABLEKS                       R2 R2 K3 ["current"]
       35 JUMPIFNOT                        R2 ; [+1]
       36 RETURN                           R0 0
       37 GETUPVAL                         R2 3
       38 LOADB                            R3 1
       39 SETTABLEKS                       R3 R2 K3 ["current"]
       41 GETUPVAL                         R2 6
       42 LOADB                            R3 1
       43 SETTABLEKS                       R3 R2 K3 ["current"]
       45 GETUPVAL                         R2 7
       46 LOADB                            R3 0
       47 CALL                             R2 1 0
       48 GETUPVAL                         R2 8
       49 GETTABLEKS                       R2 R2 K3 ["current"]
       51 JUMPIFNOT                        R2 ; [+8]
       52 GETIMPORT                        R2 K7 [task.spawn]
       54 NEWCLOSURE                       R3 P1
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          UPVAL U6
       58 CALL                             R2 1 0
       59 RETURN                           R0 0
       60 GETUPVAL                         R2 6
       61 LOADB                            R3 0
       62 SETTABLEKS                       R3 R2 K3 ["current"]
       64 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Model"]
        3 GETTABLEKS                       R0 R0 K1 ["publish"]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K8 [{"visible", "selection", "generation", "activeGenerationUniqueIds", "referenceImage", "editSessionId"}]
        7 GETUPVAL                         R3 2
        8 JUMPIFNOT                        R3 ; [+4]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K9 ["current"]
       12 NOT                              R3 R4
       13 SETTABLEKS                       R3 R2 K2 ["visible"]
       15 GETUPVAL                         R3 4
       16 SETTABLEKS                       R3 R2 K3 ["selection"]
       18 GETUPVAL                         R3 5
       19 SETTABLEKS                       R3 R2 K4 ["generation"]
       21 GETUPVAL                         R3 6
       22 GETTABLEKS                       R3 R3 K10 ["activeUniqueIds"]
       24 SETTABLEKS                       R3 R2 K5 ["activeGenerationUniqueIds"]
       26 GETUPVAL                         R3 7
       27 GETTABLEKS                       R3 R3 K11 ["state"]
       29 SETTABLEKS                       R3 R2 K6 ["referenceImage"]
       31 GETUPVAL                         R3 8
       32 SETTABLEKS                       R3 R2 K7 ["editSessionId"]
       34 CALL                             R0 2 0
       35 RETURN                           R0 0

PROTO_18:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+18]
        7 GETTABLEKS                       R2 R1 K3 ["ok"]
        9 JUMPIFNOT                        R2 ; [+14]
       10 GETTABLEKS                       R3 R1 K4 ["selectedUniqueId"]
       12 FASTCALL1                        TYPEOF R3 ; [+2]
       13 GETIMPORT                        R2 K1 [typeof]
       15 CALL                             R2 1 1
       16 JUMPIFNOTEQKS                    R2 K5 ["string"] ; [+7]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K6 ["clearFor"]
       21 GETTABLEKS                       R3 R1 K4 ["selectedUniqueId"]
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Networking"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["getFFlagTextureGenReferenceImage"]
        7 CALL                             R1 0 1
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["InsertComplete"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U3
       15 NAMECALL                         R1 R0 K3 ["OnGuestEvent"]
       17 CALL                             R1 3 2
       18 NEWCLOSURE                       R3 P1
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1

PROTO_21:
        0 LOADB                            R0 1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["kind"]
        4 JUMPIFEQKS                       R1 K1 ["single"] ; [+8]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["kind"]
        9 JUMPIFEQKS                       R1 K2 ["multi"] ; [+2]
       11 LOADB                            R0 0 +1
       12 LOADB                            R0 1
       13 GETUPVAL                         R1 1
       14 JUMPIFNOT                        R1 ; [+2]
       15 JUMPIFNOT                        R0 ; [+1]
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K3 ["clearAllExcept"]
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K4 ["discardParkedSessions"]
       23 CALL                             R2 0 -1
       24 CALL                             R1 -1 0
       25 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["startGeneration"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R6 R6 K1 ["getContent"]
        8 CALL                             R6 0 1
        9 MOVE                             R7 R2
       10 CALL                             R3 4 0
       11 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setPrompt"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_24:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["model"]
        7 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setModel"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["getFFlagGen3dTextureGenPersistPreferences"]
        8 CALL                             R1 0 1
        9 JUMPIFNOT                        R1 ; [+10]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K2 ["writeModel"]
       13 GETUPVAL                         R2 3
       14 MOVE                             R3 R0
       15 CALL                             R1 2 0
       16 GETUPVAL                         R1 4
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          VAL R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_26:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["autoSelectView"]
        7 RETURN                           R1 1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setAutoSelectView"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["getFFlagGen3dTextureGenPersistPreferences"]
        8 CALL                             R1 0 1
        9 JUMPIFNOT                        R1 ; [+10]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K2 ["writeAutoSelectView"]
       13 GETUPVAL                         R2 3
       14 MOVE                             R3 R0
       15 CALL                             R1 2 0
       16 GETUPVAL                         R1 4
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          VAL R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["pickSlot"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancel"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["startBatch"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K1 ["getContent"]
        8 CALL                             R5 0 -1
        9 CALL                             R2 -1 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["setPrompt"]
       13 LOADK                            R3 K3 [""]
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K4 ["clear"]
       18 CALL                             R2 0 0
       19 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K3 [{[1], ["Checked"] = True}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["Uri"]
        5 NAMECALL                         R0 R0 K4 ["UpdateAsync"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+12]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["getFFlagGen3dToggleActionUpdateAsync"]
        7 CALL                             R0 0 1
        8 JUMPIF                           R0 ; [+7]
        9 GETIMPORT                        R0 K4 [task.spawn]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CALL                             R0 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K0 ["current"]
       19 JUMPIF                           R0 ; [+13]
       20 GETUPVAL                         R0 4
       21 LOADB                            R1 1
       22 CALL                             R0 1 0
       23 GETUPVAL                         R0 5
       24 GETTABLEKS                       R0 R0 K0 ["current"]
       26 JUMPIFNOT                        R0 ; [+6]
       27 GETIMPORT                        R0 K4 [task.spawn]
       29 NEWCLOSURE                       R1 P1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U3
       32 CALL                             R0 1 0
       33 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K3 [{[1], ["Checked"] = False}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["Uri"]
        5 NAMECALL                         R0 R0 K4 ["UpdateAsync"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["getFFlagGen3dToggleActionUpdateAsync"]
        7 CALL                             R0 0 1
        8 JUMPIF                           R0 ; [+7]
        9 GETIMPORT                        R0 K4 [task.spawn]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CALL                             R0 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K0 ["current"]
       19 JUMPIFNOT                        R0 ; [+13]
       20 GETUPVAL                         R0 4
       21 LOADB                            R1 0
       22 CALL                             R0 1 0
       23 GETUPVAL                         R0 5
       24 GETTABLEKS                       R0 R0 K0 ["current"]
       26 JUMPIFNOT                        R0 ; [+6]
       27 GETIMPORT                        R0 K4 [task.spawn]
       29 NEWCLOSURE                       R1 P1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U3
       32 CALL                             R0 1 0
       33 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pick"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clear"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_40:
        0 NEWTABLE                         R0 0 9
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Model"]
        5 GETTABLEKS                       R1 R1 K1 ["onIntent"]
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["StartGeneration"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CALL                             R1 3 1
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K0 ["Model"]
       18 GETTABLEKS                       R2 R2 K1 ["onIntent"]
       20 GETUPVAL                         R3 1
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K3 ["SetPrompt"]
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          UPVAL U3
       26 CALL                             R2 3 1
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K0 ["Model"]
       30 GETTABLEKS                       R3 R3 K1 ["onIntent"]
       32 GETUPVAL                         R4 1
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R5 R5 K4 ["SetModel"]
       36 NEWCLOSURE                       R6 P2
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          UPVAL U7
       42 CALL                             R3 3 1
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R4 R4 K0 ["Model"]
       46 GETTABLEKS                       R4 R4 K1 ["onIntent"]
       48 GETUPVAL                         R5 1
       49 GETUPVAL                         R6 2
       50 GETTABLEKS                       R6 R6 K5 ["SetAutoSelectView"]
       52 NEWCLOSURE                       R7 P3
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          UPVAL U1
       57 CAPTURE                          UPVAL U7
       58 CALL                             R4 3 1
       59 GETUPVAL                         R5 0
       60 GETTABLEKS                       R5 R5 K0 ["Model"]
       62 GETTABLEKS                       R5 R5 K1 ["onIntent"]
       64 GETUPVAL                         R6 1
       65 GETUPVAL                         R7 2
       66 GETTABLEKS                       R7 R7 K6 ["PickSlot"]
       68 NEWCLOSURE                       R8 P4
       69 CAPTURE                          UPVAL U3
       70 CALL                             R5 3 1
       71 GETUPVAL                         R6 0
       72 GETTABLEKS                       R6 R6 K0 ["Model"]
       74 GETTABLEKS                       R6 R6 K1 ["onIntent"]
       76 GETUPVAL                         R7 1
       77 GETUPVAL                         R8 2
       78 GETTABLEKS                       R8 R8 K7 ["Cancel"]
       80 NEWCLOSURE                       R9 P5
       81 CAPTURE                          UPVAL U3
       82 CALL                             R6 3 1
       83 GETUPVAL                         R7 0
       84 GETTABLEKS                       R7 R7 K0 ["Model"]
       86 GETTABLEKS                       R7 R7 K1 ["onIntent"]
       88 GETUPVAL                         R8 1
       89 GETUPVAL                         R9 2
       90 GETTABLEKS                       R9 R9 K8 ["StartBatch"]
       92 NEWCLOSURE                       R10 P6
       93 CAPTURE                          UPVAL U8
       94 CAPTURE                          UPVAL U4
       95 CAPTURE                          UPVAL U3
       96 CALL                             R7 3 1
       97 GETUPVAL                         R8 0
       98 GETTABLEKS                       R8 R8 K0 ["Model"]
      100 GETTABLEKS                       R8 R8 K1 ["onIntent"]
      102 GETUPVAL                         R9 1
      103 GETUPVAL                         R10 2
      104 GETTABLEKS                       R10 R10 K9 ["Open"]
      106 NEWCLOSURE                       R11 P7
      107 CAPTURE                          UPVAL U9
      108 CAPTURE                          UPVAL U10
      109 CAPTURE                          UPVAL U11
      110 CAPTURE                          UPVAL U12
      111 CAPTURE                          UPVAL U13
      112 CAPTURE                          UPVAL U14
      113 CALL                             R8 3 1
      114 GETUPVAL                         R9 0
      115 GETTABLEKS                       R9 R9 K0 ["Model"]
      117 GETTABLEKS                       R9 R9 K1 ["onIntent"]
      119 GETUPVAL                         R10 1
      120 GETUPVAL                         R11 2
      121 GETTABLEKS                       R11 R11 K10 ["Close"]
      123 NEWCLOSURE                       R12 P8
      124 CAPTURE                          UPVAL U9
      125 CAPTURE                          UPVAL U10
      126 CAPTURE                          UPVAL U11
      127 CAPTURE                          UPVAL U12
      128 CAPTURE                          UPVAL U13
      129 CAPTURE                          UPVAL U14
      130 CALL                             R9 3 -1
      131 SETLIST                          R0 R1 -1 [1]
      133 GETUPVAL                         R1 10
      134 GETTABLEKS                       R1 R1 K11 ["getFFlagTextureGenReferenceImage"]
      136 CALL                             R1 0 1
      137 JUMPIFNOT                        R1 ; [+34]
      138 MOVE                             R2 R0
      139 GETUPVAL                         R3 0
      140 GETTABLEKS                       R3 R3 K0 ["Model"]
      142 GETTABLEKS                       R3 R3 K1 ["onIntent"]
      144 GETUPVAL                         R4 1
      145 GETUPVAL                         R5 2
      146 GETTABLEKS                       R5 R5 K12 ["PickReferenceImage"]
      148 NEWCLOSURE                       R6 P9
      149 CAPTURE                          UPVAL U4
      150 CALL                             R3 3 -1
      151 FASTCALL                         TABLE_INSERT ; [+2]
      152 GETIMPORT                        R1 K15 [table.insert]
      154 CALL                             R1 -1 0
      155 MOVE                             R2 R0
      156 GETUPVAL                         R3 0
      157 GETTABLEKS                       R3 R3 K0 ["Model"]
      159 GETTABLEKS                       R3 R3 K1 ["onIntent"]
      161 GETUPVAL                         R4 1
      162 GETUPVAL                         R5 2
      163 GETTABLEKS                       R5 R5 K16 ["ClearReferenceImage"]
      165 NEWCLOSURE                       R6 P10
      166 CAPTURE                          UPVAL U4
      167 CALL                             R3 3 -1
      168 FASTCALL                         TABLE_INSERT ; [+2]
      169 GETIMPORT                        R1 K15 [table.insert]
      171 CALL                             R1 -1 0
      172 NEWCLOSURE                       R1 P11
      173 CAPTURE                          VAL R0
      174 RETURN                           R1 1

PROTO_41:
        0 GETTABLEKS                       R1 R0 K0 ["Plugin"]
        2 GETTABLEKS                       R2 R0 K1 ["PluginLoaderContext"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["useState"]
        7 LOADB                            R4 0
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 1
       10 CALL                             R5 0 1
       11 GETUPVAL                         R6 2
       12 CALL                             R6 0 1
       13 GETTABLEKS                       R8 R5 K4 ["uniqueId"]
       15 ORK                              R7 R8 K3 [""]
       16 GETUPVAL                         R8 3
       17 CALL                             R8 0 1
       18 GETUPVAL                         R9 4
       19 MOVE                             R10 R7
       20 MOVE                             R11 R8
       21 CALL                             R9 2 1
       22 GETUPVAL                         R10 5
       23 MOVE                             R11 R8
       24 CALL                             R10 1 1
       25 GETUPVAL                         R11 0
       26 GETTABLEKS                       R11 R11 K5 ["useMemo"]
       28 NEWCLOSURE                       R12 P0
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          VAL R1
       31 NEWTABLE                         R13 0 1
       33 MOVE                             R14 R1
       34 SETLIST                          R13 R14 1 [1]
       36 CALL                             R11 2 1
       37 GETUPVAL                         R12 7
       38 MOVE                             R13 R11
       39 MOVE                             R14 R7
       40 CALL                             R12 2 1
       41 GETUPVAL                         R13 0
       42 GETTABLEKS                       R13 R13 K2 ["useState"]
       44 NEWCLOSURE                       R14 P1
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          UPVAL U9
       47 CAPTURE                          VAL R1
       48 CALL                             R13 1 2
       49 GETUPVAL                         R15 0
       50 GETTABLEKS                       R15 R15 K5 ["useMemo"]
       52 NEWCLOSURE                       R16 P2
       53 CAPTURE                          UPVAL U8
       54 CAPTURE                          UPVAL U9
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R13
       57 NEWTABLE                         R17 0 2
       59 GETTABLEKS                       R18 R9 K6 ["state"]
       61 MOVE                             R19 R13
       62 SETLIST                          R17 R18 2 [1]
       64 CALL                             R15 2 1
       65 GETUPVAL                         R16 0
       66 GETTABLEKS                       R16 R16 K5 ["useMemo"]
       68 NEWCLOSURE                       R17 P3
       69 CAPTURE                          VAL R1
       70 NEWTABLE                         R18 0 1
       72 MOVE                             R19 R1
       73 SETLIST                          R18 R19 1 [1]
       75 CALL                             R16 2 1
       76 GETUPVAL                         R17 0
       77 GETTABLEKS                       R17 R17 K7 ["useRef"]
       79 LOADB                            R18 0
       80 CALL                             R17 1 1
       81 SETTABLEKS                       R3 R17 K8 ["current"]
       83 GETUPVAL                         R18 0
       84 GETTABLEKS                       R18 R18 K7 ["useRef"]
       86 LOADB                            R19 0
       87 CALL                             R18 1 1
       88 GETUPVAL                         R19 0
       89 GETTABLEKS                       R19 R19 K7 ["useRef"]
       91 LOADB                            R20 0
       92 CALL                             R19 1 1
       93 GETUPVAL                         R20 0
       94 GETTABLEKS                       R20 R20 K7 ["useRef"]
       96 LOADB                            R21 1
       97 CALL                             R20 1 1
       98 GETUPVAL                         R21 0
       99 GETTABLEKS                       R21 R21 K7 ["useRef"]
      101 LOADB                            R22 0
      102 CALL                             R21 1 1
      103 LOADB                            R22 1
      104 GETTABLEKS                       R23 R5 K9 ["kind"]
      106 JUMPIFEQKS                       R23 K10 ["single"] ; [+7]
      108 GETTABLEKS                       R23 R5 K9 ["kind"]
      110 JUMPIFEQKS                       R23 K11 ["multi"] ; [+2]
      112 LOADB                            R22 0 +1
      113 LOADB                            R22 1
      114 SETTABLEKS                       R22 R21 K8 ["current"]
      116 GETUPVAL                         R22 0
      117 GETTABLEKS                       R22 R22 K12 ["useEffect"]
      119 NEWCLOSURE                       R23 P4
      120 CAPTURE                          VAL R2
      121 CAPTURE                          UPVAL U10
      122 CAPTURE                          VAL R21
      123 CAPTURE                          VAL R4
      124 NEWTABLE                         R24 0 1
      126 MOVE                             R25 R2
      127 SETLIST                          R24 R25 1 [1]
      129 CALL                             R22 2 0
      130 GETUPVAL                         R22 0
      131 GETTABLEKS                       R22 R22 K12 ["useEffect"]
      133 NEWCLOSURE                       R23 P5
      134 CAPTURE                          VAL R16
      135 CAPTURE                          UPVAL U11
      136 CAPTURE                          UPVAL U10
      137 CAPTURE                          VAL R20
      138 CAPTURE                          VAL R4
      139 NEWTABLE                         R24 0 1
      141 MOVE                             R25 R16
      142 SETLIST                          R24 R25 1 [1]
      144 CALL                             R22 2 0
      145 GETUPVAL                         R22 0
      146 GETTABLEKS                       R22 R22 K12 ["useEffect"]
      148 NEWCLOSURE                       R23 P6
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R18
      151 NEWTABLE                         R24 0 1
      153 MOVE                             R25 R3
      154 SETLIST                          R24 R25 1 [1]
      156 CALL                             R22 2 0
      157 GETUPVAL                         R22 0
      158 GETTABLEKS                       R22 R22 K12 ["useEffect"]
      160 NEWCLOSURE                       R23 P7
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R17
      163 CAPTURE                          UPVAL U10
      164 CAPTURE                          VAL R18
      165 CAPTURE                          VAL R16
      166 CAPTURE                          UPVAL U11
      167 CAPTURE                          VAL R19
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R20
      170 NEWTABLE                         R24 0 2
      172 MOVE                             R25 R5
      173 MOVE                             R26 R16
      174 SETLIST                          R24 R25 2 [1]
      176 CALL                             R22 2 0
      177 GETUPVAL                         R22 0
      178 GETTABLEKS                       R22 R22 K12 ["useEffect"]
      180 NEWCLOSURE                       R23 P8
      181 CAPTURE                          UPVAL U12
      182 CAPTURE                          VAL R1
      183 CAPTURE                          VAL R3
      184 CAPTURE                          VAL R18
      185 CAPTURE                          VAL R5
      186 CAPTURE                          VAL R15
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R12
      189 CAPTURE                          VAL R6
      190 NEWTABLE                         R24 0 7
      192 MOVE                             R25 R3
      193 MOVE                             R26 R5
      194 MOVE                             R27 R15
      195 GETTABLEKS                       R28 R8 K13 ["activeUniqueIds"]
      197 GETTABLEKS                       R29 R12 K6 ["state"]
      199 MOVE                             R30 R6
      200 MOVE                             R31 R1
      201 SETLIST                          R24 R25 7 [1]
      203 CALL                             R22 2 0
      204 GETUPVAL                         R22 0
      205 GETTABLEKS                       R22 R22 K12 ["useEffect"]
      207 NEWCLOSURE                       R23 P9
      208 CAPTURE                          VAL R0
      209 CAPTURE                          UPVAL U10
      210 CAPTURE                          UPVAL U13
      211 CAPTURE                          VAL R12
      212 NEWTABLE                         R24 0 2
      214 GETTABLEKS                       R25 R0 K14 ["Networking"]
      216 GETTABLEKS                       R26 R12 K15 ["clearFor"]
      218 SETLIST                          R24 R25 2 [1]
      220 CALL                             R22 2 0
      221 GETUPVAL                         R22 0
      222 GETTABLEKS                       R22 R22 K12 ["useEffect"]
      224 NEWCLOSURE                       R23 P10
      225 CAPTURE                          VAL R5
      226 CAPTURE                          VAL R3
      227 CAPTURE                          VAL R12
      228 CAPTURE                          VAL R9
      229 NEWTABLE                         R24 0 4
      231 MOVE                             R25 R3
      232 GETTABLEKS                       R26 R5 K9 ["kind"]
      234 GETTABLEKS                       R27 R9 K16 ["discardParkedSessions"]
      236 GETTABLEKS                       R28 R12 K17 ["clearAllExcept"]
      238 SETLIST                          R24 R25 4 [1]
      240 CALL                             R22 2 0
      241 GETUPVAL                         R22 0
      242 GETTABLEKS                       R22 R22 K12 ["useEffect"]
      244 NEWCLOSURE                       R23 P11
      245 CAPTURE                          UPVAL U12
      246 CAPTURE                          VAL R1
      247 CAPTURE                          UPVAL U14
      248 CAPTURE                          VAL R9
      249 CAPTURE                          VAL R12
      250 CAPTURE                          UPVAL U8
      251 CAPTURE                          UPVAL U9
      252 CAPTURE                          VAL R14
      253 CAPTURE                          VAL R10
      254 CAPTURE                          VAL R17
      255 CAPTURE                          UPVAL U10
      256 CAPTURE                          VAL R16
      257 CAPTURE                          UPVAL U11
      258 CAPTURE                          VAL R4
      259 CAPTURE                          VAL R20
      260 NEWTABLE                         R24 0 12
      262 MOVE                             R25 R1
      263 MOVE                             R26 R16
      264 GETTABLEKS                       R27 R9 K18 ["startGeneration"]
      266 GETTABLEKS                       R28 R9 K19 ["setPrompt"]
      268 GETTABLEKS                       R29 R9 K20 ["setModel"]
      270 GETTABLEKS                       R30 R9 K21 ["setAutoSelectView"]
      272 GETTABLEKS                       R31 R9 K22 ["pickSlot"]
      274 GETTABLEKS                       R32 R9 K23 ["cancel"]
      276 GETTABLEKS                       R33 R10 K24 ["startBatch"]
      278 GETTABLEKS                       R34 R12 K25 ["getContent"]
      280 GETTABLEKS                       R35 R12 K26 ["pick"]
      282 GETTABLEKS                       R36 R12 K27 ["clear"]
      284 SETLIST                          R24 R25 12 [1]
      286 CALL                             R22 2 0
      287 LOADNIL                          R22
      288 RETURN                           R22 1

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"value"}]
        7 GETTABLEKS                       R4 R0 K4 ["Networking"]
        9 SETTABLEKS                       R4 R3 K2 ["value"]
       11 DUPTABLE                         R4 K6 [{"Inner"}]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["createElement"]
       15 GETUPVAL                         R6 2
       16 DUPTABLE                         R7 K9 [{"Plugin", "PluginLoaderContext", "Networking"}]
       17 GETTABLEKS                       R8 R0 K7 ["Plugin"]
       19 SETTABLEKS                       R8 R7 K7 ["Plugin"]
       21 GETTABLEKS                       R8 R0 K8 ["PluginLoaderContext"]
       23 SETTABLEKS                       R8 R7 K8 ["PluginLoaderContext"]
       25 GETTABLEKS                       R8 R0 K4 ["Networking"]
       27 SETTABLEKS                       R8 R7 K4 ["Networking"]
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K5 ["Inner"]
       32 CALL                             R1 3 -1
       33 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Gen3dCore"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Util"]
       30 GETTABLEKS                       R4 R4 K11 ["StudioUri"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Src"]
       36 GETTABLEKS                       R6 R6 K13 ["Contexts"]
       38 GETTABLEKS                       R6 R6 K14 ["NetworkingContext"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K12 ["Src"]
       45 GETTABLEKS                       R7 R7 K10 ["Util"]
       47 GETTABLEKS                       R7 R7 K15 ["CrossDMViewModel"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K12 ["Src"]
       54 GETTABLEKS                       R8 R8 K16 ["Networking"]
       56 GETTABLEKS                       R8 R8 K17 ["Events"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R9 R0 K12 ["Src"]
       63 GETTABLEKS                       R9 R9 K18 ["Hooks"]
       65 GETTABLEKS                       R9 R9 K19 ["useSelection"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R10 R0 K12 ["Src"]
       72 GETTABLEKS                       R10 R10 K18 ["Hooks"]
       74 GETTABLEKS                       R10 R10 K20 ["useHostSessionId"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K5 [require]
       79 GETTABLEKS                       R11 R0 K12 ["Src"]
       81 GETTABLEKS                       R11 R11 K18 ["Hooks"]
       83 GETTABLEKS                       R11 R11 K21 ["useGeneration"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K5 [require]
       88 GETTABLEKS                       R12 R0 K12 ["Src"]
       90 GETTABLEKS                       R12 R12 K18 ["Hooks"]
       92 GETTABLEKS                       R12 R12 K22 ["useBatchGeneration"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K5 [require]
       97 GETTABLEKS                       R13 R0 K12 ["Src"]
       99 GETTABLEKS                       R13 R13 K18 ["Hooks"]
      101 GETTABLEKS                       R13 R13 K23 ["useGenerationSessions"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K5 [require]
      106 GETTABLEKS                       R14 R0 K12 ["Src"]
      108 GETTABLEKS                       R14 R14 K18 ["Hooks"]
      110 GETTABLEKS                       R14 R14 K24 ["useReferenceImage"]
      112 CALL                             R13 1 1
      113 GETIMPORT                        R14 K5 [require]
      115 GETTABLEKS                       R15 R0 K12 ["Src"]
      117 GETTABLEKS                       R15 R15 K25 ["Guest"]
      119 GETTABLEKS                       R15 R15 K26 ["createReferenceImageService"]
      121 CALL                             R14 1 1
      122 GETIMPORT                        R15 K5 [require]
      124 GETTABLEKS                       R16 R0 K12 ["Src"]
      126 GETTABLEKS                       R16 R16 K10 ["Util"]
      128 GETTABLEKS                       R16 R16 K27 ["TextureGenPreferences"]
      130 CALL                             R15 1 1
      131 GETIMPORT                        R16 K5 [require]
      133 GETTABLEKS                       R17 R0 K28 ["Bin"]
      135 GETTABLEKS                       R17 R17 K29 ["Common"]
      137 GETTABLEKS                       R17 R17 K30 ["defineLuaFlags"]
      139 CALL                             R16 1 1
      140 GETTABLEKS                       R17 R6 K31 ["Intents"]
      142 GETTABLEKS                       R18 R4 K32 ["fromAction"]
      144 LOADK                            R19 K2 ["Gen3d"]
      145 LOADK                            R20 K33 ["Toggle"]
      146 CALL                             R18 2 1
      147 DUPCLOSURE                       R19 K34 [PROTO_41]
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R8
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R1
      157 CAPTURE                          VAL R15
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R18
      160 CAPTURE                          VAL R6
      161 CAPTURE                          VAL R7
      162 CAPTURE                          VAL R17
      163 DUPCLOSURE                       R20 K35 [PROTO_42]
      164 CAPTURE                          VAL R2
      165 CAPTURE                          VAL R5
      166 CAPTURE                          VAL R19
      167 RETURN                           R20 1
