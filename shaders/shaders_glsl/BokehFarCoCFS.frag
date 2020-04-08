#version 110

struct Params
{
    vec4 TextureSize;
    vec4 Params1;
    vec4 Params2;
    vec4 Params3;
    vec4 Params4;
    vec4 Params5;
    vec4 Params6;
    vec4 Bloom;
};

uniform vec4 CB1[8];
uniform sampler2D iChannel0Texture;
uniform sampler2D iChannel1Texture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = texture2D(iChannel0Texture, VARYING0);
    float f1 = f0.w;
    float f2 = f1 * f1;
    float f3 = f2 * CB1[1].y;
    vec4 f4 = f0 * f2;
    vec2 f5 = vec2(CB1[0].y * CB1[0].z, 1.0) * 0.01400000043213367462158203125;
    vec2 f6 = vec2(0.22490672767162322998046875, 0.16340430080890655517578125) * f3;
    vec2 f7 = (f6 * f5) + VARYING0;
    vec4 f8 = texture2D(iChannel0Texture, f7);
    vec4 f9 = texture2D(iChannel1Texture, f7);
    float f10 = 0.5 * (f9.x + f8.w);
    float f11 = f7.x;
    float f12 = f7.y;
    float f13;
    vec4 f14;
    if (((((f11 >= 0.0) && (f11 <= 1.0)) && (f12 >= 0.0)) && (f12 <= 1.0)) && ((f10 * f10) >= (dot(f6, f6) * 0.99500000476837158203125)))
    {
        f14 = f4 + (f8 * f10);
        f13 = f2 + f10;
    }
    else
    {
        f14 = f4;
        f13 = f2;
    }
    vec2 f15 = vec2(-0.085906721651554107666015625, 0.2643937170505523681640625) * f3;
    vec2 f16 = (f15 * f5) + VARYING0;
    vec4 f17 = texture2D(iChannel0Texture, f16);
    vec4 f18 = texture2D(iChannel1Texture, f16);
    float f19 = 0.5 * (f18.x + f17.w);
    float f20 = f16.x;
    float f21 = f16.y;
    float f22;
    vec4 f23;
    if (((((f20 >= 0.0) && (f20 <= 1.0)) && (f21 >= 0.0)) && (f21 <= 1.0)) && ((f19 * f19) >= (dot(f15, f15) * 0.99500000476837158203125)))
    {
        f23 = f14 + (f17 * f19);
        f22 = f13 + f19;
    }
    else
    {
        f23 = f14;
        f22 = f13;
    }
    vec2 f24 = vec2(-0.27799999713897705078125, 3.4044057403885696227487100973264e-17) * f3;
    vec2 f25 = (f24 * f5) + VARYING0;
    vec4 f26 = texture2D(iChannel0Texture, f25);
    vec4 f27 = texture2D(iChannel1Texture, f25);
    float f28 = 0.5 * (f27.x + f26.w);
    float f29 = f25.x;
    float f30 = f25.y;
    float f31;
    vec4 f32;
    if (((((f29 >= 0.0) && (f29 <= 1.0)) && (f30 >= 0.0)) && (f30 <= 1.0)) && ((f28 * f28) >= (dot(f24, f24) * 0.99500000476837158203125)))
    {
        f32 = f23 + (f26 * f28);
        f31 = f22 + f28;
    }
    else
    {
        f32 = f23;
        f31 = f22;
    }
    vec2 f33 = vec2(-0.085906721651554107666015625, -0.2643937170505523681640625) * f3;
    vec2 f34 = (f33 * f5) + VARYING0;
    vec4 f35 = texture2D(iChannel0Texture, f34);
    vec4 f36 = texture2D(iChannel1Texture, f34);
    float f37 = 0.5 * (f36.x + f35.w);
    float f38 = f34.x;
    float f39 = f34.y;
    float f40;
    vec4 f41;
    if (((((f38 >= 0.0) && (f38 <= 1.0)) && (f39 >= 0.0)) && (f39 <= 1.0)) && ((f37 * f37) >= (dot(f33, f33) * 0.99500000476837158203125)))
    {
        f41 = f32 + (f35 * f37);
        f40 = f31 + f37;
    }
    else
    {
        f41 = f32;
        f40 = f31;
    }
    vec2 f42 = vec2(0.22490672767162322998046875, -0.16340430080890655517578125) * f3;
    vec2 f43 = (f42 * f5) + VARYING0;
    vec4 f44 = texture2D(iChannel0Texture, f43);
    vec4 f45 = texture2D(iChannel1Texture, f43);
    float f46 = 0.5 * (f45.x + f44.w);
    float f47 = f43.x;
    float f48 = f43.y;
    float f49;
    vec4 f50;
    if (((((f47 >= 0.0) && (f47 <= 1.0)) && (f48 >= 0.0)) && (f48 <= 1.0)) && ((f46 * f46) >= (dot(f42, f42) * 0.99500000476837158203125)))
    {
        f50 = f41 + (f44 * f46);
        f49 = f40 + f46;
    }
    else
    {
        f50 = f41;
        f49 = f40;
    }
    vec2 f51 = vec2(0.540000021457672119140625, 0.0) * f3;
    vec2 f52 = (f51 * f5) + VARYING0;
    vec4 f53 = texture2D(iChannel0Texture, f52);
    vec4 f54 = texture2D(iChannel1Texture, f52);
    float f55 = 0.5 * (f54.x + f53.w);
    float f56 = f52.x;
    float f57 = f52.y;
    float f58;
    vec4 f59;
    if (((((f56 >= 0.0) && (f56 <= 1.0)) && (f57 >= 0.0)) && (f57 <= 1.0)) && ((f55 * f55) >= (dot(f51, f51) * 0.99500000476837158203125)))
    {
        f59 = f50 + (f53 * f55);
        f58 = f49 + f55;
    }
    else
    {
        f59 = f50;
        f58 = f49;
    }
    vec2 f60 = vec2(0.436869204044342041015625, 0.3174040615558624267578125) * f3;
    vec2 f61 = (f60 * f5) + VARYING0;
    vec4 f62 = texture2D(iChannel0Texture, f61);
    vec4 f63 = texture2D(iChannel1Texture, f61);
    float f64 = 0.5 * (f63.x + f62.w);
    float f65 = f61.x;
    float f66 = f61.y;
    float f67;
    vec4 f68;
    if (((((f65 >= 0.0) && (f65 <= 1.0)) && (f66 >= 0.0)) && (f66 <= 1.0)) && ((f64 * f64) >= (dot(f60, f60) * 0.99500000476837158203125)))
    {
        f68 = f59 + (f62 * f64);
        f67 = f58 + f64;
    }
    else
    {
        f68 = f59;
        f67 = f58;
    }
    vec2 f69 = vec2(0.16686917841434478759765625, 0.5135705471038818359375) * f3;
    vec2 f70 = (f69 * f5) + VARYING0;
    vec4 f71 = texture2D(iChannel0Texture, f70);
    vec4 f72 = texture2D(iChannel1Texture, f70);
    float f73 = 0.5 * (f72.x + f71.w);
    float f74 = f70.x;
    float f75 = f70.y;
    float f76;
    vec4 f77;
    if (((((f74 >= 0.0) && (f74 <= 1.0)) && (f75 >= 0.0)) && (f75 <= 1.0)) && ((f73 * f73) >= (dot(f69, f69) * 0.99500000476837158203125)))
    {
        f77 = f68 + (f71 * f73);
        f76 = f67 + f73;
    }
    else
    {
        f77 = f68;
        f76 = f67;
    }
    vec2 f78 = vec2(-0.16686917841434478759765625, 0.5135705471038818359375) * f3;
    vec2 f79 = (f78 * f5) + VARYING0;
    vec4 f80 = texture2D(iChannel0Texture, f79);
    vec4 f81 = texture2D(iChannel1Texture, f79);
    float f82 = 0.5 * (f81.x + f80.w);
    float f83 = f79.x;
    float f84 = f79.y;
    float f85;
    vec4 f86;
    if (((((f83 >= 0.0) && (f83 <= 1.0)) && (f84 >= 0.0)) && (f84 <= 1.0)) && ((f82 * f82) >= (dot(f78, f78) * 0.99500000476837158203125)))
    {
        f86 = f77 + (f80 * f82);
        f85 = f76 + f82;
    }
    else
    {
        f86 = f77;
        f85 = f76;
    }
    vec2 f87 = vec2(-0.436869204044342041015625, 0.3174040615558624267578125) * f3;
    vec2 f88 = (f87 * f5) + VARYING0;
    vec4 f89 = texture2D(iChannel0Texture, f88);
    vec4 f90 = texture2D(iChannel1Texture, f88);
    float f91 = 0.5 * (f90.x + f89.w);
    float f92 = f88.x;
    float f93 = f88.y;
    float f94;
    vec4 f95;
    if (((((f92 >= 0.0) && (f92 <= 1.0)) && (f93 >= 0.0)) && (f93 <= 1.0)) && ((f91 * f91) >= (dot(f87, f87) * 0.99500000476837158203125)))
    {
        f95 = f86 + (f89 * f91);
        f94 = f85 + f91;
    }
    else
    {
        f95 = f86;
        f94 = f85;
    }
    vec2 f96 = vec2(-0.540000021457672119140625, 6.6128748929759884316731399778178e-17) * f3;
    vec2 f97 = (f96 * f5) + VARYING0;
    vec4 f98 = texture2D(iChannel0Texture, f97);
    vec4 f99 = texture2D(iChannel1Texture, f97);
    float f100 = 0.5 * (f99.x + f98.w);
    float f101 = f97.x;
    float f102 = f97.y;
    float f103;
    vec4 f104;
    if (((((f101 >= 0.0) && (f101 <= 1.0)) && (f102 >= 0.0)) && (f102 <= 1.0)) && ((f100 * f100) >= (dot(f96, f96) * 0.99500000476837158203125)))
    {
        f104 = f95 + (f98 * f100);
        f103 = f94 + f100;
    }
    else
    {
        f104 = f95;
        f103 = f94;
    }
    vec2 f105 = vec2(-0.436869204044342041015625, -0.3174040615558624267578125) * f3;
    vec2 f106 = (f105 * f5) + VARYING0;
    vec4 f107 = texture2D(iChannel0Texture, f106);
    vec4 f108 = texture2D(iChannel1Texture, f106);
    float f109 = 0.5 * (f108.x + f107.w);
    float f110 = f106.x;
    float f111 = f106.y;
    float f112;
    vec4 f113;
    if (((((f110 >= 0.0) && (f110 <= 1.0)) && (f111 >= 0.0)) && (f111 <= 1.0)) && ((f109 * f109) >= (dot(f105, f105) * 0.99500000476837158203125)))
    {
        f113 = f104 + (f107 * f109);
        f112 = f103 + f109;
    }
    else
    {
        f113 = f104;
        f112 = f103;
    }
    vec2 f114 = vec2(-0.16686917841434478759765625, -0.5135705471038818359375) * f3;
    vec2 f115 = (f114 * f5) + VARYING0;
    vec4 f116 = texture2D(iChannel0Texture, f115);
    vec4 f117 = texture2D(iChannel1Texture, f115);
    float f118 = 0.5 * (f117.x + f116.w);
    float f119 = f115.x;
    float f120 = f115.y;
    float f121;
    vec4 f122;
    if (((((f119 >= 0.0) && (f119 <= 1.0)) && (f120 >= 0.0)) && (f120 <= 1.0)) && ((f118 * f118) >= (dot(f114, f114) * 0.99500000476837158203125)))
    {
        f122 = f113 + (f116 * f118);
        f121 = f112 + f118;
    }
    else
    {
        f122 = f113;
        f121 = f112;
    }
    vec2 f123 = vec2(0.16686917841434478759765625, -0.5135705471038818359375) * f3;
    vec2 f124 = (f123 * f5) + VARYING0;
    vec4 f125 = texture2D(iChannel0Texture, f124);
    vec4 f126 = texture2D(iChannel1Texture, f124);
    float f127 = 0.5 * (f126.x + f125.w);
    float f128 = f124.x;
    float f129 = f124.y;
    float f130;
    vec4 f131;
    if (((((f128 >= 0.0) && (f128 <= 1.0)) && (f129 >= 0.0)) && (f129 <= 1.0)) && ((f127 * f127) >= (dot(f123, f123) * 0.99500000476837158203125)))
    {
        f131 = f122 + (f125 * f127);
        f130 = f121 + f127;
    }
    else
    {
        f131 = f122;
        f130 = f121;
    }
    vec2 f132 = vec2(0.436869204044342041015625, -0.3174040615558624267578125) * f3;
    vec2 f133 = (f132 * f5) + VARYING0;
    vec4 f134 = texture2D(iChannel0Texture, f133);
    vec4 f135 = texture2D(iChannel1Texture, f133);
    float f136 = 0.5 * (f135.x + f134.w);
    float f137 = f133.x;
    float f138 = f133.y;
    float f139;
    vec4 f140;
    if (((((f137 >= 0.0) && (f137 <= 1.0)) && (f138 >= 0.0)) && (f138 <= 1.0)) && ((f136 * f136) >= (dot(f132, f132) * 0.99500000476837158203125)))
    {
        f140 = f131 + (f134 * f136);
        f139 = f130 + f136;
    }
    else
    {
        f140 = f131;
        f139 = f130;
    }
    vec2 f141 = vec2(0.7651021480560302734375, 0.18858073651790618896484375) * f3;
    vec2 f142 = (f141 * f5) + VARYING0;
    vec4 f143 = texture2D(iChannel0Texture, f142);
    vec4 f144 = texture2D(iChannel1Texture, f142);
    float f145 = 0.5 * (f144.x + f143.w);
    float f146 = f142.x;
    float f147 = f142.y;
    float f148;
    vec4 f149;
    if (((((f146 >= 0.0) && (f146 <= 1.0)) && (f147 >= 0.0)) && (f147 <= 1.0)) && ((f145 * f145) >= (dot(f141, f141) * 0.99500000476837158203125)))
    {
        f149 = f140 + (f143 * f145);
        f148 = f139 + f145;
    }
    else
    {
        f149 = f140;
        f148 = f139;
    }
    vec2 f150 = vec2(0.58982646465301513671875, 0.522540628910064697265625) * f3;
    vec2 f151 = (f150 * f5) + VARYING0;
    vec4 f152 = texture2D(iChannel0Texture, f151);
    vec4 f153 = texture2D(iChannel1Texture, f151);
    float f154 = 0.5 * (f153.x + f152.w);
    float f155 = f151.x;
    float f156 = f151.y;
    float f157;
    vec4 f158;
    if (((((f155 >= 0.0) && (f155 <= 1.0)) && (f156 >= 0.0)) && (f156 <= 1.0)) && ((f154 * f154) >= (dot(f150, f150) * 0.99500000476837158203125)))
    {
        f158 = f149 + (f152 * f154);
        f157 = f148 + f154;
    }
    else
    {
        f158 = f149;
        f157 = f148;
    }
    vec2 f159 = vec2(0.279428660869598388671875, 0.7367928028106689453125) * f3;
    vec2 f160 = (f159 * f5) + VARYING0;
    vec4 f161 = texture2D(iChannel0Texture, f160);
    vec4 f162 = texture2D(iChannel1Texture, f160);
    float f163 = 0.5 * (f162.x + f161.w);
    float f164 = f160.x;
    float f165 = f160.y;
    float f166;
    vec4 f167;
    if (((((f164 >= 0.0) && (f164 <= 1.0)) && (f165 >= 0.0)) && (f165 <= 1.0)) && ((f163 * f163) >= (dot(f159, f159) * 0.99500000476837158203125)))
    {
        f167 = f158 + (f161 * f163);
        f166 = f157 + f163;
    }
    else
    {
        f167 = f158;
        f166 = f157;
    }
    vec2 f168 = vec2(-0.094982899725437164306640625, 0.78225457668304443359375) * f3;
    vec2 f169 = (f168 * f5) + VARYING0;
    vec4 f170 = texture2D(iChannel0Texture, f169);
    vec4 f171 = texture2D(iChannel1Texture, f169);
    float f172 = 0.5 * (f171.x + f170.w);
    float f173 = f169.x;
    float f174 = f169.y;
    float f175;
    vec4 f176;
    if (((((f173 >= 0.0) && (f173 <= 1.0)) && (f174 >= 0.0)) && (f174 <= 1.0)) && ((f172 * f172) >= (dot(f168, f168) * 0.99500000476837158203125)))
    {
        f176 = f167 + (f170 * f172);
        f175 = f166 + f172;
    }
    else
    {
        f176 = f167;
        f175 = f166;
    }
    vec2 f177 = vec2(-0.4476350247859954833984375, 0.64851129055023193359375) * f3;
    vec2 f178 = (f177 * f5) + VARYING0;
    vec4 f179 = texture2D(iChannel0Texture, f178);
    vec4 f180 = texture2D(iChannel1Texture, f178);
    float f181 = 0.5 * (f180.x + f179.w);
    float f182 = f178.x;
    float f183 = f178.y;
    float f184;
    vec4 f185;
    if (((((f182 >= 0.0) && (f182 <= 1.0)) && (f183 >= 0.0)) && (f183 <= 1.0)) && ((f181 * f181) >= (dot(f177, f177) * 0.99500000476837158203125)))
    {
        f185 = f176 + (f179 * f181);
        f184 = f175 + f181;
    }
    else
    {
        f185 = f176;
        f184 = f175;
    }
    vec2 f186 = vec2(-0.6977393627166748046875, 0.3662018477916717529296875) * f3;
    vec2 f187 = (f186 * f5) + VARYING0;
    vec4 f188 = texture2D(iChannel0Texture, f187);
    vec4 f189 = texture2D(iChannel1Texture, f187);
    float f190 = 0.5 * (f189.x + f188.w);
    float f191 = f187.x;
    float f192 = f187.y;
    float f193;
    vec4 f194;
    if (((((f191 >= 0.0) && (f191 <= 1.0)) && (f192 >= 0.0)) && (f192 <= 1.0)) && ((f190 * f190) >= (dot(f186, f186) * 0.99500000476837158203125)))
    {
        f194 = f185 + (f188 * f190);
        f193 = f184 + f190;
    }
    else
    {
        f194 = f185;
        f193 = f184;
    }
    vec2 f195 = vec2(-0.78799998760223388671875, 4.4644126152591019802973182351025e-16) * f3;
    vec2 f196 = (f195 * f5) + VARYING0;
    vec4 f197 = texture2D(iChannel0Texture, f196);
    vec4 f198 = texture2D(iChannel1Texture, f196);
    float f199 = 0.5 * (f198.x + f197.w);
    float f200 = f196.x;
    float f201 = f196.y;
    float f202;
    vec4 f203;
    if (((((f200 >= 0.0) && (f200 <= 1.0)) && (f201 >= 0.0)) && (f201 <= 1.0)) && ((f199 * f199) >= (dot(f195, f195) * 0.99500000476837158203125)))
    {
        f203 = f194 + (f197 * f199);
        f202 = f193 + f199;
    }
    else
    {
        f203 = f194;
        f202 = f193;
    }
    vec2 f204 = vec2(-0.6977393627166748046875, -0.3662018477916717529296875) * f3;
    vec2 f205 = (f204 * f5) + VARYING0;
    vec4 f206 = texture2D(iChannel0Texture, f205);
    vec4 f207 = texture2D(iChannel1Texture, f205);
    float f208 = 0.5 * (f207.x + f206.w);
    float f209 = f205.x;
    float f210 = f205.y;
    float f211;
    vec4 f280;
    if (((((f209 >= 0.0) && (f209 <= 1.0)) && (f210 >= 0.0)) && (f210 <= 1.0)) && ((f208 * f208) >= (dot(f204, f204) * 0.99500000476837158203125)))
    {
        f280 = f203 + (f206 * f208);
        f211 = f202 + f208;
    }
    else
    {
        f280 = f203;
        f211 = f202;
    }
    vec2 f213 = vec2(-0.4476350247859954833984375, -0.64851129055023193359375) * f3;
    vec2 f214 = (f213 * f5) + VARYING0;
    vec4 f215 = texture2D(iChannel0Texture, f214);
    vec4 f216 = texture2D(iChannel1Texture, f214);
    float f217 = 0.5 * (f216.x + f215.w);
    float f218 = f214.x;
    float f219 = f214.y;
    float f220;
    vec4 f281;
    if (((((f218 >= 0.0) && (f218 <= 1.0)) && (f219 >= 0.0)) && (f219 <= 1.0)) && ((f217 * f217) >= (dot(f213, f213) * 0.99500000476837158203125)))
    {
        f281 = f280 + (f215 * f217);
        f220 = f211 + f217;
    }
    else
    {
        f281 = f280;
        f220 = f211;
    }
    vec2 f222 = vec2(-0.094982899725437164306640625, -0.78225457668304443359375) * f3;
    vec2 f223 = (f222 * f5) + VARYING0;
    vec4 f224 = texture2D(iChannel0Texture, f223);
    vec4 f225 = texture2D(iChannel1Texture, f223);
    float f226 = 0.5 * (f225.x + f224.w);
    float f227 = f223.x;
    float f228 = f223.y;
    float f229;
    vec4 f282;
    if (((((f227 >= 0.0) && (f227 <= 1.0)) && (f228 >= 0.0)) && (f228 <= 1.0)) && ((f226 * f226) >= (dot(f222, f222) * 0.99500000476837158203125)))
    {
        f282 = f281 + (f224 * f226);
        f229 = f220 + f226;
    }
    else
    {
        f282 = f281;
        f229 = f220;
    }
    vec2 f231 = vec2(0.279428660869598388671875, -0.7367928028106689453125) * f3;
    vec2 f232 = (f231 * f5) + VARYING0;
    vec4 f233 = texture2D(iChannel0Texture, f232);
    vec4 f234 = texture2D(iChannel1Texture, f232);
    float f235 = 0.5 * (f234.x + f233.w);
    float f236 = f232.x;
    float f237 = f232.y;
    float f238;
    vec4 f283;
    if (((((f236 >= 0.0) && (f236 <= 1.0)) && (f237 >= 0.0)) && (f237 <= 1.0)) && ((f235 * f235) >= (dot(f231, f231) * 0.99500000476837158203125)))
    {
        f283 = f282 + (f233 * f235);
        f238 = f229 + f235;
    }
    else
    {
        f283 = f282;
        f238 = f229;
    }
    vec2 f240 = vec2(0.58982646465301513671875, -0.522540628910064697265625) * f3;
    vec2 f241 = (f240 * f5) + VARYING0;
    vec4 f242 = texture2D(iChannel0Texture, f241);
    vec4 f243 = texture2D(iChannel1Texture, f241);
    float f244 = 0.5 * (f243.x + f242.w);
    float f245 = f241.x;
    float f246 = f241.y;
    float f247;
    vec4 f284;
    if (((((f245 >= 0.0) && (f245 <= 1.0)) && (f246 >= 0.0)) && (f246 <= 1.0)) && ((f244 * f244) >= (dot(f240, f240) * 0.99500000476837158203125)))
    {
        f284 = f283 + (f242 * f244);
        f247 = f238 + f244;
    }
    else
    {
        f284 = f283;
        f247 = f238;
    }
    vec2 f249 = vec2(0.7651021480560302734375, -0.18858073651790618896484375) * f3;
    vec2 f250 = (f249 * f5) + VARYING0;
    vec4 f251 = texture2D(iChannel0Texture, f250);
    vec4 f252 = texture2D(iChannel1Texture, f250);
    float f253 = 0.5 * (f252.x + f251.w);
    float f254 = f250.x;
    float f255 = f250.y;
    float f256;
    vec4 f285;
    if (((((f254 >= 0.0) && (f254 <= 1.0)) && (f255 >= 0.0)) && (f255 <= 1.0)) && ((f253 * f253) >= (dot(f249, f249) * 0.99500000476837158203125)))
    {
        f285 = f284 + (f251 * f253);
        f256 = f247 + f253;
    }
    else
    {
        f285 = f284;
        f256 = f247;
    }
    vec2 f258 = vec2(1.0, 0.0) * f3;
    vec2 f259 = (f258 * f5) + VARYING0;
    vec4 f260 = texture2D(iChannel0Texture, f259);
    vec4 f261 = texture2D(iChannel1Texture, f259);
    float f262 = 0.5 * (f261.x + f260.w);
    float f263 = f259.x;
    float f264 = f259.y;
    float f265;
    vec4 f286;
    if (((((f263 >= 0.0) && (f263 <= 1.0)) && (f264 >= 0.0)) && (f264 <= 1.0)) && ((f262 * f262) >= (dot(f258, f258) * 0.99500000476837158203125)))
    {
        f286 = f285 + (f260 * f262);
        f265 = f256 + f262;
    }
    else
    {
        f286 = f285;
        f265 = f256;
    }
    vec2 f267 = vec2(0.93247222900390625, 0.3612416684627532958984375) * f3;
    vec2 f268 = (f267 * f5) + VARYING0;
    vec4 f269 = texture2D(iChannel0Texture, f268);
    vec4 f270 = texture2D(iChannel1Texture, f268);
    float f271 = 0.5 * (f270.x + f269.w);
    float f272 = f268.x;
    float f273 = f268.y;
    float f274;
    vec4 f287;
    if (((((f272 >= 0.0) && (f272 <= 1.0)) && (f273 >= 0.0)) && (f273 <= 1.0)) && ((f271 * f271) >= (dot(f267, f267) * 0.99500000476837158203125)))
    {
        f287 = f286 + (f269 * f271);
        f274 = f265 + f271;
    }
    else
    {
        f287 = f286;
        f274 = f265;
    }
    vec2 f276 = vec2(0.73900890350341796875, 0.673695623874664306640625) * f3;
    vec2 f277 = (f276 * f5) + VARYING0;
    vec4 f278 = texture2D(iChannel0Texture, f277);
    vec4 f279 = texture2D(iChannel1Texture, f277);
    float f280 = 0.5 * (f279.x + f278.w);
    float f281 = f277.x;
    float f282 = f277.y;
    float f283;
    vec4 f288;
    if (((((f281 >= 0.0) && (f281 <= 1.0)) && (f282 >= 0.0)) && (f282 <= 1.0)) && ((f280 * f280) >= (dot(f276, f276) * 0.99500000476837158203125)))
    {
        f288 = f287 + (f278 * f280);
        f283 = f274 + f280;
    }
    else
    {
        f288 = f287;
        f283 = f274;
    }
    vec2 f285 = vec2(0.4457383453845977783203125, 0.8951632976531982421875) * f3;
    vec2 f286 = (f285 * f5) + VARYING0;
    vec4 f287 = texture2D(iChannel0Texture, f286);
    vec4 f288 = texture2D(iChannel1Texture, f286);
    float f289 = 0.5 * (f288.x + f287.w);
    float f290 = f286.x;
    float f291 = f286.y;
    float f292;
    vec4 f289;
    if (((((f290 >= 0.0) && (f290 <= 1.0)) && (f291 >= 0.0)) && (f291 <= 1.0)) && ((f289 * f289) >= (dot(f285, f285) * 0.99500000476837158203125)))
    {
        f289 = f288 + (f287 * f289);
        f292 = f283 + f289;
    }
    else
    {
        f289 = f288;
        f292 = f283;
    }
    vec2 f294 = vec2(0.09226836264133453369140625, 0.995734155178070068359375) * f3;
    vec2 f295 = (f294 * f5) + VARYING0;
    vec4 f296 = texture2D(iChannel0Texture, f295);
    vec4 f297 = texture2D(iChannel1Texture, f295);
    float f298 = 0.5 * (f297.x + f296.w);
    float f299 = f295.x;
    float f300 = f295.y;
    float f301;
    vec4 f302;
    if (((((f299 >= 0.0) && (f299 <= 1.0)) && (f300 >= 0.0)) && (f300 <= 1.0)) && ((f298 * f298) >= (dot(f294, f294) * 0.99500000476837158203125)))
    {
        f302 = f289 + (f296 * f298);
        f301 = f292 + f298;
    }
    else
    {
        f302 = f289;
        f301 = f292;
    }
    vec2 f303 = vec2(-0.273662984371185302734375, 0.961825668811798095703125) * f3;
    vec2 f304 = (f303 * f5) + VARYING0;
    vec4 f305 = texture2D(iChannel0Texture, f304);
    vec4 f306 = texture2D(iChannel1Texture, f304);
    float f307 = 0.5 * (f306.x + f305.w);
    float f308 = f304.x;
    float f309 = f304.y;
    float f310;
    vec4 f311;
    if (((((f308 >= 0.0) && (f308 <= 1.0)) && (f309 >= 0.0)) && (f309 <= 1.0)) && ((f307 * f307) >= (dot(f303, f303) * 0.99500000476837158203125)))
    {
        f311 = f302 + (f305 * f307);
        f310 = f301 + f307;
    }
    else
    {
        f311 = f302;
        f310 = f301;
    }
    vec2 f312 = vec2(-0.602634608745574951171875, 0.798017203807830810546875) * f3;
    vec2 f313 = (f312 * f5) + VARYING0;
    vec4 f314 = texture2D(iChannel0Texture, f313);
    vec4 f315 = texture2D(iChannel1Texture, f313);
    float f316 = 0.5 * (f315.x + f314.w);
    float f317 = f313.x;
    float f318 = f313.y;
    float f319;
    vec4 f320;
    if (((((f317 >= 0.0) && (f317 <= 1.0)) && (f318 >= 0.0)) && (f318 <= 1.0)) && ((f316 * f316) >= (dot(f312, f312) * 0.99500000476837158203125)))
    {
        f320 = f311 + (f314 * f316);
        f319 = f310 + f316;
    }
    else
    {
        f320 = f311;
        f319 = f310;
    }
    vec2 f321 = vec2(-0.850217163562774658203125, 0.52643215656280517578125) * f3;
    vec2 f322 = (f321 * f5) + VARYING0;
    vec4 f323 = texture2D(iChannel0Texture, f322);
    vec4 f324 = texture2D(iChannel1Texture, f322);
    float f325 = 0.5 * (f324.x + f323.w);
    float f326 = f322.x;
    float f327 = f322.y;
    float f328;
    vec4 f329;
    if (((((f326 >= 0.0) && (f326 <= 1.0)) && (f327 >= 0.0)) && (f327 <= 1.0)) && ((f325 * f325) >= (dot(f321, f321) * 0.99500000476837158203125)))
    {
        f329 = f320 + (f323 * f325);
        f328 = f319 + f325;
    }
    else
    {
        f329 = f320;
        f328 = f319;
    }
    vec2 f330 = vec2(-0.9829730987548828125, 0.18374951183795928955078125) * f3;
    vec2 f331 = (f330 * f5) + VARYING0;
    vec4 f332 = texture2D(iChannel0Texture, f331);
    vec4 f333 = texture2D(iChannel1Texture, f331);
    float f334 = 0.5 * (f333.x + f332.w);
    float f335 = f331.x;
    float f336 = f331.y;
    float f337;
    vec4 f338;
    if (((((f335 >= 0.0) && (f335 <= 1.0)) && (f336 >= 0.0)) && (f336 <= 1.0)) && ((f334 * f334) >= (dot(f330, f330) * 0.99500000476837158203125)))
    {
        f338 = f329 + (f332 * f334);
        f337 = f328 + f334;
    }
    else
    {
        f338 = f329;
        f337 = f328;
    }
    vec2 f339 = vec2(-0.9829730987548828125, -0.18374951183795928955078125) * f3;
    vec2 f340 = (f339 * f5) + VARYING0;
    vec4 f341 = texture2D(iChannel0Texture, f340);
    vec4 f342 = texture2D(iChannel1Texture, f340);
    float f343 = 0.5 * (f342.x + f341.w);
    float f344 = f340.x;
    float f345 = f340.y;
    float f346;
    vec4 f347;
    if (((((f344 >= 0.0) && (f344 <= 1.0)) && (f345 >= 0.0)) && (f345 <= 1.0)) && ((f343 * f343) >= (dot(f339, f339) * 0.99500000476837158203125)))
    {
        f347 = f338 + (f341 * f343);
        f346 = f337 + f343;
    }
    else
    {
        f347 = f338;
        f346 = f337;
    }
    vec2 f348 = vec2(-0.850217163562774658203125, -0.52643215656280517578125) * f3;
    vec2 f349 = (f348 * f5) + VARYING0;
    vec4 f350 = texture2D(iChannel0Texture, f349);
    vec4 f351 = texture2D(iChannel1Texture, f349);
    float f352 = 0.5 * (f351.x + f350.w);
    float f353 = f349.x;
    float f354 = f349.y;
    float f355;
    vec4 f356;
    if (((((f353 >= 0.0) && (f353 <= 1.0)) && (f354 >= 0.0)) && (f354 <= 1.0)) && ((f352 * f352) >= (dot(f348, f348) * 0.99500000476837158203125)))
    {
        f356 = f347 + (f350 * f352);
        f355 = f346 + f352;
    }
    else
    {
        f356 = f347;
        f355 = f346;
    }
    vec2 f357 = vec2(-0.602634608745574951171875, -0.798017203807830810546875) * f3;
    vec2 f358 = (f357 * f5) + VARYING0;
    vec4 f359 = texture2D(iChannel0Texture, f358);
    vec4 f360 = texture2D(iChannel1Texture, f358);
    float f361 = 0.5 * (f360.x + f359.w);
    float f362 = f358.x;
    float f363 = f358.y;
    float f364;
    vec4 f365;
    if (((((f362 >= 0.0) && (f362 <= 1.0)) && (f363 >= 0.0)) && (f363 <= 1.0)) && ((f361 * f361) >= (dot(f357, f357) * 0.99500000476837158203125)))
    {
        f365 = f356 + (f359 * f361);
        f364 = f355 + f361;
    }
    else
    {
        f365 = f356;
        f364 = f355;
    }
    vec2 f366 = vec2(-0.273662984371185302734375, -0.961825668811798095703125) * f3;
    vec2 f367 = (f366 * f5) + VARYING0;
    vec4 f368 = texture2D(iChannel0Texture, f367);
    vec4 f369 = texture2D(iChannel1Texture, f367);
    float f370 = 0.5 * (f369.x + f368.w);
    float f371 = f367.x;
    float f372 = f367.y;
    float f373;
    vec4 f374;
    if (((((f371 >= 0.0) && (f371 <= 1.0)) && (f372 >= 0.0)) && (f372 <= 1.0)) && ((f370 * f370) >= (dot(f366, f366) * 0.99500000476837158203125)))
    {
        f374 = f365 + (f368 * f370);
        f373 = f364 + f370;
    }
    else
    {
        f374 = f365;
        f373 = f364;
    }
    vec2 f375 = vec2(0.09226836264133453369140625, -0.995734155178070068359375) * f3;
    vec2 f376 = (f375 * f5) + VARYING0;
    vec4 f377 = texture2D(iChannel0Texture, f376);
    vec4 f378 = texture2D(iChannel1Texture, f376);
    float f379 = 0.5 * (f378.x + f377.w);
    float f380 = f376.x;
    float f381 = f376.y;
    float f382;
    vec4 f383;
    if (((((f380 >= 0.0) && (f380 <= 1.0)) && (f381 >= 0.0)) && (f381 <= 1.0)) && ((f379 * f379) >= (dot(f375, f375) * 0.99500000476837158203125)))
    {
        f383 = f374 + (f377 * f379);
        f382 = f373 + f379;
    }
    else
    {
        f383 = f374;
        f382 = f373;
    }
    vec2 f384 = vec2(0.4457383453845977783203125, -0.8951632976531982421875) * f3;
    vec2 f385 = (f384 * f5) + VARYING0;
    vec4 f386 = texture2D(iChannel0Texture, f385);
    vec4 f387 = texture2D(iChannel1Texture, f385);
    float f388 = 0.5 * (f387.x + f386.w);
    float f389 = f385.x;
    float f390 = f385.y;
    float f391;
    vec4 f290;
    if (((((f389 >= 0.0) && (f389 <= 1.0)) && (f390 >= 0.0)) && (f390 <= 1.0)) && ((f388 * f388) >= (dot(f384, f384) * 0.99500000476837158203125)))
    {
        f290 = f383 + (f386 * f388);
        f391 = f382 + f388;
    }
    else
    {
        f290 = f383;
        f391 = f382;
    }
    vec2 f393 = vec2(0.73900890350341796875, -0.673695623874664306640625) * f3;
    vec2 f394 = (f393 * f5) + VARYING0;
    vec4 f395 = texture2D(iChannel0Texture, f394);
    vec4 f396 = texture2D(iChannel1Texture, f394);
    float f397 = 0.5 * (f396.x + f395.w);
    float f398 = f394.x;
    float f399 = f394.y;
    float f400;
    vec4 f291;
    if (((((f398 >= 0.0) && (f398 <= 1.0)) && (f399 >= 0.0)) && (f399 <= 1.0)) && ((f397 * f397) >= (dot(f393, f393) * 0.99500000476837158203125)))
    {
        f291 = f290 + (f395 * f397);
        f400 = f391 + f397;
    }
    else
    {
        f291 = f290;
        f400 = f391;
    }
    vec2 f402 = vec2(0.93247222900390625, -0.3612416684627532958984375) * f3;
    vec2 f403 = (f402 * f5) + VARYING0;
    vec4 f404 = texture2D(iChannel0Texture, f403);
    vec4 f405 = texture2D(iChannel1Texture, f403);
    float f406 = 0.5 * (f405.x + f404.w);
    float f407 = f403.x;
    float f408 = f403.y;
    float f409;
    vec4 f292;
    if (((((f407 >= 0.0) && (f407 <= 1.0)) && (f408 >= 0.0)) && (f408 <= 1.0)) && ((f406 * f406) >= (dot(f402, f402) * 0.99500000476837158203125)))
    {
        f292 = f291 + (f404 * f406);
        f409 = f400 + f406;
    }
    else
    {
        f292 = f291;
        f409 = f400;
    }
    gl_FragData[0] = f292 * clamp(1.0 / (f409 + 0.001000000047497451305389404296875), 0.0, 1.0);
}

//$$iChannel0Texture=s0
//$$iChannel1Texture=s1
