PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K1 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K2 ["boolean"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K3 [+4]
  LOADK R5 K3 ["isUploadFeeEnabled must be a boolean"]
  GETIMPORT R3 K5 [assert]
  CALL R3 2 0
  LOADB R4 1
  JUMPIFEQKNIL R1 [+10]
  FASTCALL1 TYPE R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K1 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K6 ["number"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K7 [+4]
  LOADK R5 K7 ["uploadFee must be a number or nil"]
  GETIMPORT R3 K5 [assert]
  CALL R3 2 0
  LOADB R4 1
  JUMPIFEQKNIL R2 [+10]
  FASTCALL1 TYPE R2 [+3]
  MOVE R6 R2
  GETIMPORT R5 K1 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K2 ["boolean"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["canAffordUploadFee must be a boolean or nil"]
  GETIMPORT R3 K5 [assert]
  CALL R3 2 0
  DUPTABLE R3 K12 [{"isUploadFeeEnabled", "uploadFee", "canAffordUploadFee"}]
  SETTABLEKS R0 R3 K9 ["isUploadFeeEnabled"]
  SETTABLEKS R1 R3 K10 ["uploadFee"]
  SETTABLEKS R2 R3 K11 ["canAffordUploadFee"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["Action"]
  MOVE R4 R3
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K9 ["Name"]
  DUPCLOSURE R6 K10 [PROTO_0]
  CALL R4 2 -1
  RETURN R4 -1
