PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [type]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["boolean"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       11 LOADK                            R5 K3 ["isUploadFeeEnabled must be a boolean"]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 2 0
       15 LOADB                            R4 1
       16 JUMPIFEQKNIL                     R1 ; [+10]
       18 FASTCALL1                        TYPE R1 ; [+3]
       19 MOVE                             R6 R1
       20 GETIMPORT                        R5 K1 [type]
       22 CALL                             R5 1 1
       23 JUMPIFEQKS                       R5 K6 ["number"] ; [+2]
       25 LOADB                            R4 0 +1
       26 LOADB                            R4 1
       27 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       29 LOADK                            R5 K7 ["uploadFee must be a number or nil"]
       30 GETIMPORT                        R3 K5 [assert]
       32 CALL                             R3 2 0
       33 LOADB                            R4 1
       34 JUMPIFEQKNIL                     R2 ; [+10]
       36 FASTCALL1                        TYPE R2 ; [+3]
       37 MOVE                             R6 R2
       38 GETIMPORT                        R5 K1 [type]
       40 CALL                             R5 1 1
       41 JUMPIFEQKS                       R5 K2 ["boolean"] ; [+2]
       43 LOADB                            R4 0 +1
       44 LOADB                            R4 1
       45 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       47 LOADK                            R5 K8 ["canAffordUploadFee must be a boolean or nil"]
       48 GETIMPORT                        R3 K5 [assert]
       50 CALL                             R3 2 0
       51 DUPTABLE                         R3 K12 [{"isUploadFeeEnabled", "uploadFee", "canAffordUploadFee"}]
       52 SETTABLEKS                       R0 R3 K9 ["isUploadFeeEnabled"]
       54 SETTABLEKS                       R1 R3 K10 ["uploadFee"]
       56 SETTABLEKS                       R2 R3 K11 ["canAffordUploadFee"]
       58 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Framework"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K7 ["Util"]
       18 GETTABLEKS                       R3 R3 K8 ["Action"]
       20 MOVE                             R4 R3
       21 GETIMPORT                        R5 K1 [script]
       23 GETTABLEKS                       R5 R5 K9 ["Name"]
       25 DUPCLOSURE                       R6 K10 [PROTO_0]
       26 CALL                             R4 2 -1
       27 RETURN                           R4 -1
