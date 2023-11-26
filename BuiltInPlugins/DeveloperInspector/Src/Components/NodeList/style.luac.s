MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Style"]
  GETTABLEKS R2 R3 K8 ["StyleKey"]
  GETTABLEKS R3 R1 K9 ["Util"]
  GETTABLEKS R4 R3 K10 ["deepCopy"]
  GETTABLEKS R5 R1 K11 ["UIData"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R5 K12 ["ScrollingFrame"]
  GETTABLEKS R7 R8 K13 ["style"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R5 K14 ["RoundBox"]
  GETTABLEKS R8 R9 K13 ["style"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R5 K15 ["LinkText"]
  GETTABLEKS R9 R10 K13 ["style"]
  CALL R8 1 1
  DUPTABLE R9 K26 [{"Background", "BackgroundStyle", "ScrollingFrame", "BackgroundColor", "Padding", "RowHeight", "IconPadding", "HoverColor", "SelectedColor", "SelectedTextColor", "Link"}]
  SETTABLEKS R7 R9 K16 ["Background"]
  SETTABLEKS R7 R9 K17 ["BackgroundStyle"]
  SETTABLEKS R6 R9 K12 ["ScrollingFrame"]
  GETTABLEKS R10 R2 K27 ["MainBackground"]
  SETTABLEKS R10 R9 K18 ["BackgroundColor"]
  LOADN R10 1
  SETTABLEKS R10 R9 K19 ["Padding"]
  LOADN R10 24
  SETTABLEKS R10 R9 K20 ["RowHeight"]
  LOADN R10 5
  SETTABLEKS R10 R9 K21 ["IconPadding"]
  GETTABLEKS R10 R2 K28 ["ButtonHover"]
  SETTABLEKS R10 R9 K22 ["HoverColor"]
  GETTABLEKS R10 R2 K29 ["DialogMainButton"]
  SETTABLEKS R10 R9 K23 ["SelectedColor"]
  GETTABLEKS R10 R2 K30 ["DialogMainButtonText"]
  SETTABLEKS R10 R9 K24 ["SelectedTextColor"]
  MOVE R10 R4
  MOVE R11 R8
  CALL R10 1 1
  SETTABLEKS R10 R9 K25 ["Link"]
  RETURN R9 1
