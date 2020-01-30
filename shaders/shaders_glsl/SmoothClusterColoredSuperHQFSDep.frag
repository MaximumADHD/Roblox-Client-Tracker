#version 110
#extension GL_ARB_shader_texture_lod : require

struct Globals
{
    mat4 ViewProjection;
    vec4 ViewRight;
    vec4 ViewUp;
    vec4 ViewDir;
    vec3 CameraPosition;
    vec3 AmbientColor;
    vec3 SkyAmbient;
    vec3 Lamp0Color;
    vec3 Lamp0Dir;
    vec3 Lamp1Color;
    vec4 FogParams;
    vec4 FogColor_GlobalForceFieldTime;
    vec3 Exposure;
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
    vec4 SkyGradientTop_EnvDiffuse;
    vec4 SkyGradientBottom_EnvSpec;
    vec3 AmbientColorNoIBL;
    vec3 SkyAmbientNoIBL;
    vec4 AmbientCube[12];
    vec4 CascadeSphere0;
    vec4 CascadeSphere1;
    vec4 CascadeSphere2;
    vec4 CascadeSphere3;
    float hybridLerpDist;
    float hybridLerpSlope;
    float evsmPosExp;
    float evsmNegExp;
    float globalShadow;
    float shadowBias;
    float shadowAlphaRef;
    float debugFlags;
};

uniform vec4 CB0[47];
uniform vec4 CB3[1];
uniform vec4 CB4[36];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D AlbedoMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec4 VARYING7;
varying vec3 VARYING8;
varying vec4 VARYING9;

void main()
{
    vec4 f0 = (fract(VARYING1) * CB3[0].xyxy) + VARYING2;
    vec2 f1 = (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw;
    vec4 f2 = VARYING1 * CB3[0].xyxy;
    vec2 f3 = VARYING3.xy * CB3[0].xy;
    vec2 f4 = f0.xy;
    vec2 f5 = f2.xy;
    vec4 f6 = texture2DGradARB(AlbedoMapTexture, f4, dFdx(f5), dFdy(f5));
    vec2 f7 = f0.zw;
    vec2 f8 = f2.zw;
    vec4 f9 = texture2DGradARB(AlbedoMapTexture, f7, dFdx(f8), dFdy(f8));
    vec4 f10 = texture2DGradARB(AlbedoMapTexture, f1, dFdx(f3), dFdy(f3));
    int f11 = int(VARYING9.x + 0.5);
    int f12 = int(VARYING9.y + 0.5);
    int f13 = int(VARYING9.z + 0.5);
    vec2 f14 = f6.xz - vec2(0.5);
    vec2 f15 = f9.xz - vec2(0.5);
    vec2 f16 = f10.xz - vec2(0.5);
    vec3 f17 = vec3(0.0);
    f17.x = CB4[f11 * 1 + 0].x * f6.y;
    float f18 = f14.x;
    float f19 = f14.y;
    vec3 f20 = f17;
    f20.y = (CB4[f11 * 1 + 0].y * f18) - (CB4[f11 * 1 + 0].z * f19);
    vec3 f21 = f20;
    f21.z = (CB4[f11 * 1 + 0].z * f18) + (CB4[f11 * 1 + 0].y * f19);
    vec3 f22 = vec3(0.0);
    f22.x = CB4[f12 * 1 + 0].x * f9.y;
    float f23 = f15.x;
    float f24 = f15.y;
    vec3 f25 = f22;
    f25.y = (CB4[f12 * 1 + 0].y * f23) - (CB4[f12 * 1 + 0].z * f24);
    vec3 f26 = f25;
    f26.z = (CB4[f12 * 1 + 0].z * f23) + (CB4[f12 * 1 + 0].y * f24);
    vec3 f27 = vec3(0.0);
    f27.x = CB4[f13 * 1 + 0].x * f10.y;
    float f28 = f16.x;
    float f29 = f16.y;
    vec3 f30 = f27;
    f30.y = (CB4[f13 * 1 + 0].y * f28) - (CB4[f13 * 1 + 0].z * f29);
    vec3 f31 = f30;
    f31.z = (CB4[f13 * 1 + 0].z * f28) + (CB4[f13 * 1 + 0].y * f29);
    vec4 f32 = ((vec4(f21.x, f21.y, f21.z, f6.w) * VARYING0.x) + (vec4(f26.x, f26.y, f26.z, f9.w) * VARYING0.y)) + (vec4(f31.x, f31.y, f31.z, f10.w) * VARYING0.z);
    float f33 = f32.x;
    float f34 = f33 - f32.z;
    vec3 f35 = vec4(vec3(f34, f33, f34) + (vec3(f32.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f36 = clamp(1.0 - (VARYING7.w * CB0[23].y), 0.0, 1.0);
    float f37 = -VARYING6.x;
    vec2 f38 = (((texture2DGradARB(NormalMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(NormalMapTexture, f7, dFdx(f8), dFdy(f8)) * VARYING0.y)) + (texture2DGradARB(NormalMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z)).wy * 2.0;
    vec2 f39 = f38 - vec2(1.0);
    vec3 f40 = vec3(dot(VARYING8, VARYING0.xyz));
    vec3 f41 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f37), vec3(VARYING6.y, f37, 0.0), f40) * f39.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f40) * f39.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f38, f39), 0.0, 1.0)))), 0.0).xyz;
    vec4 f42 = ((texture2DGradARB(SpecularMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, f7, dFdx(f8), dFdy(f8)) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z);
    float f43 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f44 = VARYING4.yzx - (VARYING4.yzx * f43);
    vec4 f45 = vec4(clamp(f43, 0.0, 1.0));
    vec4 f46 = mix(texture3D(LightMapTexture, f44), vec4(0.0), f45);
    vec4 f47 = mix(texture3D(LightGridSkylightTexture, f44), vec4(1.0), f45);
    vec3 f48 = (f46.xyz * (f46.w * 120.0)).xyz;
    float f49 = f47.x;
    vec4 f50 = texture2D(ShadowMapTexture, VARYING5.xy);
    float f51 = (1.0 - ((step(f50.x, VARYING5.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f50.y)) * f47.y;
    vec3 f52 = normalize(VARYING7.xyz);
    vec3 f53 = (f35 * f35).xyz;
    float f54 = f42.y;
    float f55 = CB0[26].w * f36;
    vec3 f56 = reflect(-f52, f41);
    vec3 f57 = -CB0[11].xyz;
    vec3 f58 = normalize(f57 + f52);
    float f59 = dot(f41, f57);
    float f60 = clamp(f59, 0.0, 1.0);
    float f61 = f54 * f54;
    float f62 = max(0.001000000047497451305389404296875, dot(f41, f58));
    float f63 = dot(f57, f58);
    float f64 = 1.0 - f63;
    float f65 = f64 * f64;
    float f66 = (f65 * f65) * f64;
    vec3 f67 = vec3(f66) + (vec3(0.039999999105930328369140625) * (1.0 - f66));
    float f68 = f61 * f61;
    float f69 = (((f62 * f68) - f62) * f62) + 1.0;
    float f70 = f54 * 5.0;
    vec3 f71 = vec4(f56, f70).xyz;
    vec4 f72 = texture2D(PrecomputedBRDFTexture, vec2(f54, max(9.9999997473787516355514526367188e-05, dot(f41, f52))));
    float f73 = f72.x;
    float f74 = f72.y;
    vec3 f75 = ((vec3(0.039999999105930328369140625) * f73) + vec3(f74)) / vec3(f73 + f74);
    vec3 f76 = (vec3(1.0) - (f75 * f55)) * 1.0;
    vec3 f77 = f41 * f41;
    bvec3 f78 = lessThan(f41, vec3(0.0));
    vec3 f79 = vec3(f78.x ? f77.x : vec3(0.0).x, f78.y ? f77.y : vec3(0.0).y, f78.z ? f77.z : vec3(0.0).z);
    vec3 f80 = f77 - f79;
    float f81 = f80.x;
    float f82 = f80.y;
    float f83 = f80.z;
    float f84 = f79.x;
    float f85 = f79.y;
    float f86 = f79.z;
    vec3 f87 = (mix(textureCubeLod(PrefilteredEnvIndoorTexture, f71, f70).xyz * f48, textureCubeLod(PrefilteredEnvTexture, f71, f70).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f56.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f49)) * f75) * f55;
    vec3 f88 = (((((((((((vec3(1.0) - (f67 * f55)) * 1.0) * CB0[10].xyz) * f60) + ((CB0[12].xyz * 1.0) * clamp(-f59, 0.0, 1.0))) * f51) + (f76 * (((((((CB0[35].xyz * f81) + (CB0[37].xyz * f82)) + (CB0[39].xyz * f83)) + (CB0[36].xyz * f84)) + (CB0[38].xyz * f85)) + (CB0[40].xyz * f86)) + (((((((CB0[29].xyz * f81) + (CB0[31].xyz * f82)) + (CB0[33].xyz * f83)) + (CB0[30].xyz * f84)) + (CB0[32].xyz * f85)) + (CB0[34].xyz * f86)) * f49)))) + (CB0[27].xyz + (CB0[28].xyz * f49))) + vec3((f42.z * 2.0) * f36)) * f53) + (((((((f67 * ((f68 + (f68 * f68)) / (((f69 * f69) * ((f63 * 3.0) + 0.5)) * ((f62 * 0.75) + 0.25)))) * CB0[10].xyz) * f60) * f51) * f36) * VARYING0.w) + f87)) + (f48 * mix(f53, f87 * (1.0 / (max(max(f87.x, f87.y), f87.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f76) * f55) * (1.0 - f49)));
    vec4 f89 = vec4(f88.x, f88.y, f88.z, vec4(0.0).w);
    f89.w = 1.0;
    vec3 f90 = mix(CB0[14].xyz, sqrt(clamp(f89.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    gl_FragData[0] = vec4(f90.x, f90.y, f90.z, f89.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s2
