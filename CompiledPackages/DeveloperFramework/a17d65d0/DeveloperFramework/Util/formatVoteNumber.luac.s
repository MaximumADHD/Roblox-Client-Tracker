PROTO_0:
        0 LOADN                            R2 10
        1 JUMPIFLE                         R2 R0 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["hasEnoughRatings"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+2]
        6 LOADK                            R2 K1 [""]
        7 RETURN                           R2 1
        8 LOADNIL                          R2
        9 LOADN                            R3 15
       10 JUMPIFNOTLE                      R0 R3 ; [+8]
       12 FASTCALL1                        TOSTRING R0 ; [+3]
       13 MOVE                             R4 R0
       14 GETIMPORT                        R3 K3 [tostring]
       16 CALL                             R3 1 1
       17 MOVE                             R2 R3
       18 JUMP                             ; [+9]
       19 MOVE                             R5 R0
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R6 R7 K4 ["Truncate"]
       23 LOADN                            R7 1
       24 NAMECALL                         R3 R1 K5 ["localizeAndAbbreviateNumber"]
       26 CALL                             R3 4 1
       27 MOVE                             R2 R3
       28 LOADN                            R3 15
       29 JUMPIFNOTLE                      R0 R3 ; [+11]
       31 GETUPVAL                         R5 2
       32 LOADK                            R6 K6 ["VoteBar"]
       33 LOADK                            R7 K7 ["VoteCountGreaterThanEqualTen1"]
       34 DUPTABLE                         R8 K9 [{"count"}]
       35 SETTABLEKS                       R2 R8 K8 ["count"]
       37 NAMECALL                         R3 R1 K10 ["getProjectText"]
       39 CALL                             R3 5 -1
       40 RETURN                           R3 -1
       41 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["hasEnoughRatings"]
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 JUMPIF                           R4 ; [+7]
        6 GETUPVAL                         R6 1
        7 LOADK                            R7 K1 ["VoteBar"]
        8 LOADK                            R8 K2 ["VoteCountTooSmall"]
        9 NAMECALL                         R4 R1 K3 ["getProjectText"]
       11 CALL                             R4 4 -1
       12 RETURN                           R4 -1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K4 ["getFormattedVoteNumber"]
       16 MOVE                             R5 R0
       17 MOVE                             R6 R1
       18 CALL                             R4 2 1
       19 JUMPIFNOT                        R2 ; [+10]
       20 GETUPVAL                         R7 1
       21 LOADK                            R8 K1 ["VoteBar"]
       22 LOADK                            R9 K5 ["VoteCountWrappedInParens1"]
       23 DUPTABLE                         R10 K7 [{"count"}]
       24 SETTABLEKS                       R4 R10 K6 ["count"]
       26 NAMECALL                         R5 R1 K3 ["getProjectText"]
       28 CALL                             R5 5 1
       29 MOVE                             R4 R5
       30 JUMPIFNOT                        R3 ; [+10]
       31 GETUPVAL                         R7 1
       32 LOADK                            R8 K1 ["VoteBar"]
       33 LOADK                            R9 K8 ["VoteCountAndText1"]
       34 DUPTABLE                         R10 K7 [{"count"}]
       35 SETTABLEKS                       R4 R10 K6 ["count"]
       37 NAMECALL                         R5 R1 K3 ["getProjectText"]
       39 CALL                             R5 5 1
       40 MOVE                             R4 R5
       41 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Util"]
       11 GETTABLEKS                       R2 R3 K6 ["RoundingBehaviour"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Resources"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K8 ["LOCALIZATION_PROJECT_NAME"]
       21 NEWTABLE                         R4 4 0
       23 DUPCLOSURE                       R5 K9 [PROTO_0]
       24 SETTABLEKS                       R5 R4 K10 ["hasEnoughRatings"]
       26 DUPCLOSURE                       R5 K11 [PROTO_1]
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R5 R4 K12 ["getFormattedVoteNumber"]
       32 DUPCLOSURE                       R5 K13 [PROTO_2]
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R3
       35 SETTABLEKS                       R5 R4 K14 ["getFormattedVoteNumberAndText"]
       37 RETURN                           R4 1
