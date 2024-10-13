PROTO_0:
  GETTABLEKS R3 R0 K0 ["displayText"]
  GETTABLEKS R4 R1 K0 ["displayText"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_1:
  GETTABLEKS R2 R1 K0 ["data"]
  NEWTABLE R3 0 0
  NEWTABLE R4 0 0
  GETIMPORT R5 K2 [pairs]
  MOVE R6 R2
  CALL R5 1 3
  FORGPREP_NEXT R5
  GETTABLEKS R11 R9 K3 ["locale"]
  GETTABLEKS R10 R11 K3 ["locale"]
  DUPTABLE R11 K7 [{"localeId", "languageCode", "displayText"}]
  GETTABLEKS R13 R9 K3 ["locale"]
  GETTABLEKS R12 R13 K3 ["locale"]
  SETTABLEKS R12 R11 K4 ["localeId"]
  GETTABLEKS R14 R9 K3 ["locale"]
  GETTABLEKS R13 R14 K8 ["language"]
  GETTABLEKS R12 R13 K5 ["languageCode"]
  SETTABLEKS R12 R11 K5 ["languageCode"]
  GETTABLEKS R14 R9 K3 ["locale"]
  GETTABLEKS R13 R14 K8 ["language"]
  GETTABLEKS R12 R13 K9 ["name"]
  SETTABLEKS R12 R11 K6 ["displayText"]
  SETTABLE R11 R3 R10
  DUPTABLE R12 K10 [{"localeId", "displayText"}]
  GETTABLEKS R14 R9 K3 ["locale"]
  GETTABLEKS R13 R14 K3 ["locale"]
  SETTABLEKS R13 R12 K4 ["localeId"]
  GETTABLEKS R15 R9 K3 ["locale"]
  GETTABLEKS R14 R15 K8 ["language"]
  GETTABLEKS R13 R14 K9 ["name"]
  SETTABLEKS R13 R12 K6 ["displayText"]
  FASTCALL2 TABLE_INSERT R4 R12 [+4]
  MOVE R11 R4
  GETIMPORT R10 K13 [table.insert]
  CALL R10 2 0
  FORGLOOP R5 2 [-50]
  GETIMPORT R5 K15 [table.sort]
  MOVE R6 R4
  DUPCLOSURE R7 K16 [PROTO_0]
  CALL R5 2 0
  DUPTABLE R5 K20 [{"isCustom", "displayTextSectionKey", "displayTextStringKey"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K17 ["isCustom"]
  LOADK R6 K21 ["LanguageSection"]
  SETTABLEKS R6 R5 K18 ["displayTextSectionKey"]
  LOADK R6 K22 ["CustomLanguageDisplayText"]
  SETTABLEKS R6 R5 K19 ["displayTextStringKey"]
  FASTCALL2 TABLE_INSERT R4 R5 [+5]
  MOVE R7 R4
  MOVE R8 R5
  GETIMPORT R6 K13 [table.insert]
  CALL R6 2 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K23 ["Dictionary"]
  GETTABLEKS R6 R7 K24 ["join"]
  MOVE R7 R0
  DUPTABLE R8 K27 [{"languagesTable", "languagesList"}]
  SETTABLEKS R3 R8 K25 ["languagesTable"]
  SETTABLEKS R4 R8 K26 ["languagesList"]
  CALL R6 2 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Rodux"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["createReducer"]
  DUPTABLE R4 K11 [{"languagesTable", "languagesList"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K9 ["languagesTable"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K10 ["languagesList"]
  DUPTABLE R5 K13 [{"LoadLanguages"}]
  DUPCLOSURE R6 K14 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K12 ["LoadLanguages"]
  CALL R3 2 -1
  RETURN R3 -1
