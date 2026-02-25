PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["SimCreateAnimationConstraint"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 LOADB                            R0 0
        2 GETIMPORT                        R1 K1 [pcall]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          REF R0
        6 CALL                             R1 1 0
        7 NEWTABLE                         R1 32 0
        9 DUPTABLE                         R2 K3 [{"Attachments"}]
       10 LOADN                            R3 1
       11 SETTABLEKS                       R3 R2 K2 ["Attachments"]
       13 SETTABLEKS                       R2 R1 K4 ["Attachment"]
       15 DUPTABLE                         R2 K3 [{"Attachments"}]
       16 LOADN                            R3 2
       17 SETTABLEKS                       R3 R2 K2 ["Attachments"]
       19 SETTABLEKS                       R2 R1 K5 ["WeldConstraint"]
       21 DUPTABLE                         R2 K3 [{"Attachments"}]
       22 LOADN                            R3 2
       23 SETTABLEKS                       R3 R2 K2 ["Attachments"]
       25 SETTABLEKS                       R2 R1 K6 ["HingeConstraint"]
       27 DUPTABLE                         R2 K3 [{"Attachments"}]
       28 LOADN                            R3 2
       29 SETTABLEKS                       R3 R2 K2 ["Attachments"]
       31 SETTABLEKS                       R2 R1 K7 ["BallSocketConstraint"]
       33 DUPTABLE                         R2 K3 [{"Attachments"}]
       34 LOADN                            R3 2
       35 SETTABLEKS                       R3 R2 K2 ["Attachments"]
       37 SETTABLEKS                       R2 R1 K8 ["RigidConstraint"]
       39 DUPTABLE                         R2 K3 [{"Attachments"}]
       40 LOADN                            R3 2
       41 SETTABLEKS                       R3 R2 K2 ["Attachments"]
       43 SETTABLEKS                       R2 R1 K9 ["PrismaticConstraint"]
       45 DUPTABLE                         R2 K3 [{"Attachments"}]
       46 LOADN                            R3 2
       47 SETTABLEKS                       R3 R2 K2 ["Attachments"]
       49 SETTABLEKS                       R2 R1 K10 ["CylindricalConstraint"]
       51 DUPTABLE                         R2 K3 [{"Attachments"}]
       52 LOADN                            R3 2
       53 SETTABLEKS                       R3 R2 K2 ["Attachments"]
       55 SETTABLEKS                       R2 R1 K11 ["UniversalConstraint"]
       57 DUPTABLE                         R2 K3 [{"Attachments"}]
       58 LOADN                            R3 2
       59 SETTABLEKS                       R3 R2 K2 ["Attachments"]
       61 SETTABLEKS                       R2 R1 K12 ["PlaneConstraint"]
       63 DUPTABLE                         R2 K14 [{"Attachments", "IgnoreSamePartCheck"}]
       64 LOADN                            R3 2
       65 SETTABLEKS                       R3 R2 K2 ["Attachments"]
       67 LOADB                            R3 1
       68 SETTABLEKS                       R3 R2 K13 ["IgnoreSamePartCheck"]
       70 SETTABLEKS                       R2 R1 K15 ["RopeConstraint"]
       72 DUPTABLE                         R2 K3 [{"Attachments"}]
       73 LOADN                            R3 2
       74 SETTABLEKS                       R3 R2 K2 ["Attachments"]
       76 SETTABLEKS                       R2 R1 K16 ["RodConstraint"]
       78 DUPTABLE                         R2 K18 [{"Attachments", "Properties", "IgnoreSamePartCheck"}]
       79 LOADN                            R3 2
       80 SETTABLEKS                       R3 R2 K2 ["Attachments"]
       82 DUPTABLE                         R3 K21 [{"Stiffness", "Damping"}]
       83 LOADN                            R4 232
       84 SETTABLEKS                       R4 R3 K19 ["Stiffness"]
       86 LOADN                            R4 2
       87 SETTABLEKS                       R4 R3 K20 ["Damping"]
       89 SETTABLEKS                       R3 R2 K17 ["Properties"]
       91 LOADB                            R3 1
       92 SETTABLEKS                       R3 R2 K13 ["IgnoreSamePartCheck"]
       94 SETTABLEKS                       R2 R1 K22 ["SpringConstraint"]
       96 DUPTABLE                         R2 K23 [{"Attachments", "Properties"}]
       97 LOADN                            R3 2
       98 SETTABLEKS                       R3 R2 K2 ["Attachments"]
      100 DUPTABLE                         R3 K21 [{"Stiffness", "Damping"}]
      101 LOADN                            R4 232
      102 SETTABLEKS                       R4 R3 K19 ["Stiffness"]
      104 LOADN                            R4 2
      105 SETTABLEKS                       R4 R3 K20 ["Damping"]
      107 SETTABLEKS                       R3 R2 K17 ["Properties"]
      109 SETTABLEKS                       R2 R1 K24 ["TorsionSpringConstraint"]
      111 DUPTABLE                         R2 K3 [{"Attachments"}]
      112 LOADN                            R3 2
      113 SETTABLEKS                       R3 R2 K2 ["Attachments"]
      115 SETTABLEKS                       R2 R1 K25 ["NoCollisionConstraint"]
      117 DUPTABLE                         R2 K23 [{"Attachments", "Properties"}]
      118 LOADN                            R3 2
      119 SETTABLEKS                       R3 R2 K2 ["Attachments"]
      121 DUPTABLE                         R3 K27 [{"MaxTorque"}]
      122 LOADN                            R4 32
      123 SETTABLEKS                       R4 R3 K26 ["MaxTorque"]
      125 SETTABLEKS                       R3 R2 K17 ["Properties"]
      127 SETTABLEKS                       R2 R1 K28 ["AlignOrientation"]
      129 DUPTABLE                         R2 K3 [{"Attachments"}]
      130 LOADN                            R3 2
      131 SETTABLEKS                       R3 R2 K2 ["Attachments"]
      133 SETTABLEKS                       R2 R1 K29 ["AlignPosition"]
      135 JUMPIFNOT                        R0 ; [+5]
      136 DUPTABLE                         R2 K3 [{"Attachments"}]
      137 LOADN                            R3 2
      138 SETTABLEKS                       R3 R2 K2 ["Attachments"]
      140 JUMP                             ; [+1]
      141 LOADNIL                          R2
      142 SETTABLEKS                       R2 R1 K30 ["AnimationConstraint"]
      144 DUPTABLE                         R2 K3 [{"Attachments"}]
      145 LOADN                            R3 2
      146 SETTABLEKS                       R3 R2 K2 ["Attachments"]
      148 SETTABLEKS                       R2 R1 K31 ["LineForce"]
      150 DUPTABLE                         R2 K3 [{"Attachments"}]
      151 LOADN                            R3 1
      152 SETTABLEKS                       R3 R2 K2 ["Attachments"]
      154 SETTABLEKS                       R2 R1 K32 ["VectorForce"]
      156 DUPTABLE                         R2 K23 [{"Attachments", "Properties"}]
      157 LOADN                            R3 1
      158 SETTABLEKS                       R3 R2 K2 ["Attachments"]
      160 DUPTABLE                         R3 K34 [{"Torque"}]
      161 LOADK                            R4 K35 [{2000, 0, 0}]
      162 SETTABLEKS                       R4 R3 K33 ["Torque"]
      164 SETTABLEKS                       R3 R2 K17 ["Properties"]
      166 SETTABLEKS                       R2 R1 K33 ["Torque"]
      168 DUPTABLE                         R2 K23 [{"Attachments", "Properties"}]
      169 LOADN                            R3 1
      170 SETTABLEKS                       R3 R2 K2 ["Attachments"]
      172 DUPTABLE                         R3 K37 [{"AngularVelocity", "MaxTorque"}]
      173 LOADK                            R4 K38 [{0, 1, 0}]
      174 SETTABLEKS                       R4 R3 K36 ["AngularVelocity"]
      176 LOADN                            R4 32
      177 SETTABLEKS                       R4 R3 K26 ["MaxTorque"]
      179 SETTABLEKS                       R3 R2 K17 ["Properties"]
      181 SETTABLEKS                       R2 R1 K36 ["AngularVelocity"]
      183 DUPTABLE                         R2 K23 [{"Attachments", "Properties"}]
      184 LOADN                            R3 1
      185 SETTABLEKS                       R3 R2 K2 ["Attachments"]
      187 DUPTABLE                         R3 K41 [{"MaxForce", "VectorVelocity"}]
      188 LOADN                            R4 16
      189 SETTABLEKS                       R4 R3 K39 ["MaxForce"]
      191 LOADK                            R4 K38 [{0, 1, 0}]
      192 SETTABLEKS                       R4 R3 K40 ["VectorVelocity"]
      194 SETTABLEKS                       R3 R2 K17 ["Properties"]
      196 SETTABLEKS                       R2 R1 K42 ["LinearVelocity"]
      198 DUPTABLE                         R2 K3 [{"Attachments"}]
      199 LOADN                            R3 1
      200 SETTABLEKS                       R3 R2 K2 ["Attachments"]
      202 SETTABLEKS                       R2 R1 K43 ["Bone"]
      204 SETGLOBAL                        R1 K44 ["ConstraintTypes"]
      206 GETGLOBAL                        R1 K44 ["ConstraintTypes"]
      208 CLOSEUPVALS                      R0
      209 RETURN                           R1 1
