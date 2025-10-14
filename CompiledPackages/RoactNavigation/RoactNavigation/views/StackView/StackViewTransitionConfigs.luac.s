PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Modal"]
  JUMPIFNOTEQ R2 R3 [+3]
  GETUPVAL R3 1
  RETURN R3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["Overlay"]
  JUMPIFNOTEQ R2 R3 [+3]
  GETUPVAL R3 2
  RETURN R3 1
  GETUPVAL R3 3
  RETURN R3 1

PROTO_1:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["Modal"]
  JUMPIFNOTEQ R3 R5 [+3]
  GETUPVAL R4 1
  JUMP [+9]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["Overlay"]
  JUMPIFNOTEQ R3 R5 [+3]
  GETUPVAL R4 2
  JUMP [+2]
  GETUPVAL R4 3
  JUMP [0]
  JUMPIFNOT R0 [+13]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K2 ["Dictionary"]
  GETTABLEKS R5 R6 K3 ["join"]
  MOVE R6 R4
  MOVE R7 R0
  MOVE R8 R1
  MOVE R9 R2
  MOVE R10 R3
  CALL R7 3 -1
  CALL R5 -1 -1
  RETURN R5 -1
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Cryo"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K6 ["StackViewInterpolator"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K7 ["StackPresentationStyle"]
  CALL R2 1 1
  DUPTABLE R3 K10 [{"frequency", "dampingRatio"}]
  LOADN R4 3
  SETTABLEKS R4 R3 K8 ["frequency"]
  LOADN R4 1
  SETTABLEKS R4 R3 K9 ["dampingRatio"]
  DUPTABLE R4 K13 [{"transitionSpec", "screenInterpolator"}]
  SETTABLEKS R3 R4 K11 ["transitionSpec"]
  GETTABLEKS R5 R1 K14 ["forHorizontal"]
  SETTABLEKS R5 R4 K12 ["screenInterpolator"]
  DUPTABLE R5 K13 [{"transitionSpec", "screenInterpolator"}]
  SETTABLEKS R3 R5 K11 ["transitionSpec"]
  GETTABLEKS R6 R1 K15 ["forVertical"]
  SETTABLEKS R6 R5 K12 ["screenInterpolator"]
  DUPTABLE R6 K13 [{"transitionSpec", "screenInterpolator"}]
  SETTABLEKS R3 R6 K11 ["transitionSpec"]
  GETTABLEKS R7 R1 K16 ["forFade"]
  SETTABLEKS R7 R6 K12 ["screenInterpolator"]
  DUPCLOSURE R7 K17 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R4
  DUPCLOSURE R8 K18 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R0
  DUPTABLE R9 K24 [{"getDefaultTransitionConfig", "getTransitionConfig", "SlideFromRight", "ModalSlideFromBottom", "FadeInPlace"}]
  SETTABLEKS R7 R9 K19 ["getDefaultTransitionConfig"]
  SETTABLEKS R8 R9 K20 ["getTransitionConfig"]
  SETTABLEKS R4 R9 K21 ["SlideFromRight"]
  SETTABLEKS R5 R9 K22 ["ModalSlideFromBottom"]
  SETTABLEKS R6 R9 K23 ["FadeInPlace"]
  RETURN R9 1
