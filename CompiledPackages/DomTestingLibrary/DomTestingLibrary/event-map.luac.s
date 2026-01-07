MAIN:
  PREPVARARGS 0
  NEWTABLE R0 2 0
  NEWTABLE R1 128 0
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K3 ["ClipboardEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K8 ["copy"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K3 ["ClipboardEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K9 ["cut"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K3 ["ClipboardEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K10 ["paste"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K11 ["CompositionEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K12 ["compositionEnd"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K11 ["CompositionEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K13 ["compositionStart"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K11 ["CompositionEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K14 ["compositionUpdate"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K15 ["KeyboardEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K17 [{"bubbles", "cancelable", "charCode", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADN R4 0
  SETTABLEKS R4 R3 K16 ["charCode"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K18 ["keyDown"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K15 ["KeyboardEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K17 [{"bubbles", "cancelable", "charCode", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADN R4 0
  SETTABLEKS R4 R3 K16 ["charCode"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K19 ["keyPress"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K15 ["KeyboardEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K17 [{"bubbles", "cancelable", "charCode", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADN R4 0
  SETTABLEKS R4 R3 K16 ["charCode"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K20 ["keyUp"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K21 ["FocusEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K22 ["focus"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K21 ["FocusEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K23 ["blur"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K21 ["FocusEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K24 ["focusIn"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K21 ["FocusEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K25 ["focusOut"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K28 ["change"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K29 ["InputEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K30 ["input"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K31 ["invalid"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K32 ["submit"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K33 ["reset"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K34 ["MouseEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K36 [{"bubbles", "cancelable", "button", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADN R4 0
  SETTABLEKS R4 R3 K35 ["button"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K37 ["click"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K34 ["MouseEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K38 ["contextMenu"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K34 ["MouseEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K39 ["dblClick"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K40 ["DragEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K41 ["drag"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K40 ["DragEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K42 ["dragEnd"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K40 ["DragEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K43 ["dragEnter"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K40 ["DragEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K44 ["dragExit"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K40 ["DragEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K45 ["dragLeave"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K40 ["DragEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K46 ["dragOver"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K40 ["DragEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K47 ["dragStart"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K40 ["DragEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K48 ["drop"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K34 ["MouseEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K49 ["mouseDown"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K34 ["MouseEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K50 ["mouseEnter"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K34 ["MouseEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K51 ["mouseLeave"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K34 ["MouseEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K52 ["mouseMove"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K34 ["MouseEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K53 ["mouseOut"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K34 ["MouseEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K54 ["mouseOver"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K34 ["MouseEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K55 ["mouseUp"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K56 ["select"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K57 ["TouchEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K58 ["touchCancel"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K57 ["TouchEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K59 ["touchEnd"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K57 ["TouchEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K60 ["touchMove"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K57 ["TouchEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K61 ["touchStart"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K62 ["UIEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K63 ["resize"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K62 ["UIEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K64 ["scroll"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K65 ["WheelEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K66 ["wheel"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K67 ["abort"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K68 ["canPlay"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K69 ["canPlayThrough"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K70 ["durationChange"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K71 ["emptied"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K72 ["encrypted"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K73 ["ended"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K74 ["loadedData"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K75 ["loadedMetadata"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K76 ["ProgressEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K77 ["loadStart"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K78 ["pause"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K79 ["play"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K80 ["playing"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K76 ["ProgressEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K81 ["progress"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K82 ["rateChange"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K83 ["seeked"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K84 ["seeking"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K85 ["stalled"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K86 ["suspend"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K87 ["timeUpdate"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K88 ["volumeChange"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K89 ["waiting"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K62 ["UIEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K90 ["load"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K26 ["Event"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K91 ["error"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K92 ["AnimationEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K93 ["animationStart"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K92 ["AnimationEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K94 ["animationEnd"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K92 ["AnimationEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K95 ["animationIteration"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K96 ["TransitionEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K97 ["transitionCancel"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K96 ["TransitionEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K98 ["transitionEnd"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K96 ["TransitionEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K99 ["transitionRun"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K96 ["TransitionEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K100 ["transitionStart"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K101 ["PointerEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K102 ["pointerOver"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K101 ["PointerEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K103 ["pointerEnter"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K101 ["PointerEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K104 ["pointerDown"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K101 ["PointerEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K105 ["pointerMove"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K101 ["PointerEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K106 ["pointerUp"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K101 ["PointerEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K107 ["pointerCancel"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K101 ["PointerEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K108 ["pointerOut"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K101 ["PointerEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K109 ["pointerLeave"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K101 ["PointerEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K110 ["gotPointerCapture"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K101 ["PointerEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K7 [{"bubbles", "cancelable", "composed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["composed"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K111 ["lostPointerCapture"]
  DUPTABLE R2 K2 [{"EventType", "defaultInit"}]
  LOADK R3 K112 ["PopStateEvent"]
  SETTABLEKS R3 R2 K0 ["EventType"]
  DUPTABLE R3 K27 [{"bubbles", "cancelable"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["bubbles"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelable"]
  SETTABLEKS R3 R2 K1 ["defaultInit"]
  SETTABLEKS R2 R1 K113 ["popState"]
  SETTABLEKS R1 R0 K114 ["eventMap"]
  DUPTABLE R2 K116 [{"doubleClick"}]
  LOADK R3 K39 ["dblClick"]
  SETTABLEKS R3 R2 K115 ["doubleClick"]
  SETTABLEKS R2 R0 K117 ["eventAliasMap"]
  RETURN R0 1
