PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["doPickFile"]
  CALL R0 0 1
  JUMPIFEQKNIL R0 [+3]
  JUMPIFNOTEQKS R0 K1 [""] [+2]
  RETURN R0 0
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["onFilepathChanged"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  GETTABLEKS R3 R0 K2 ["filepath"]
  ORK R2 R3 K1 [""]
  CALL R1 1 2
  GETUPVAL R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["View"]
  DUPTABLE R5 K6 [{"tag", "onActivated"}]
  LOADK R6 K7 ["size-full-800 bg-shift-100 radius-small padding-small align-y-center stroke-default data-testid=pickable-filepath-click-target"]
  SETTABLEKS R6 R5 K4 ["tag"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K5 ["onActivated"]
  DUPTABLE R6 K9 [{"filepathText"}]
  GETUPVAL R7 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K10 ["Text"]
  DUPTABLE R9 K12 [{"Text", "TextTruncate", "tag"}]
  JUMPIFNOT R1 [+2]
  JUMPIFNOTEQKS R1 K1 [""] [+3]
  LOADK R10 K13 ["Click to select file"]
  JUMP [+1]
  MOVE R10 R1
  SETTABLEKS R10 R9 K10 ["Text"]
  GETIMPORT R10 K16 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R10 R9 K11 ["TextTruncate"]
  LOADK R10 K17 ["content-link text-body-medium auto-xy text-align-x-left text-align-y-center"]
  SETTABLEKS R10 R9 K4 ["tag"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K8 ["filepathText"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ReimportPlugin"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Foundation"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["createElement"]
  DUPCLOSURE R4 K10 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R1
  RETURN R4 1
