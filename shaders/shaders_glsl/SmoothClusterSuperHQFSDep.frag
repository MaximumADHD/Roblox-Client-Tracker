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

void main()
{
    vec4 f0 = (fract(VARYING1) * CB3[0].xyxy) + VARYING2;
    vec2 f1 = (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw;
    vec4 f2 = VARYING1 * CB3[0].xyxy;
    vec2 f3 = VARYING3.xy * CB3[0].xy;
    vec2 f4 = f0.xy;
    vec2 f5 = f2.xy;
    vec2 f6 = f0.zw;
    vec2 f7 = f2.zw;
    vec4 f8 = ((texture2DGradARB(AlbedoMapTexture, f4, dFdx(f5), dFdy(f5)).yxzw * VARYING0.x) + (texture2DGradARB(AlbedoMapTexture, f6, dFdx(f7), dFdy(f7)).yxzw * VARYING0.y)) + (texture2DGradARB(AlbedoMapTexture, f1, dFdx(f3), dFdy(f3)).yxzw * VARYING0.z);
    vec2 f9 = f8.yz - vec2(0.5);
    float f10 = f8.x;
    float f11 = f10 - f9.y;
    vec3 f12 = vec4(vec3(f11, f10, f11) + (vec3(f9.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f13 = clamp(1.0 - (VARYING7.w * CB0[23].y), 0.0, 1.0);
    float f14 = -VARYING6.x;
    vec2 f15 = (((texture2DGradARB(NormalMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(NormalMapTexture, f6, dFdx(f7), dFdy(f7)) * VARYING0.y)) + (texture2DGradARB(NormalMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z)).wy * 2.0;
    vec2 f16 = f15 - vec2(1.0);
    vec3 f17 = vec3(dot(VARYING8, VARYING0.xyz));
    vec3 f18 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f14), vec3(VARYING6.y, f14, 0.0), f17) * f16.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f17) * f16.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f15, f16), 0.0, 1.0)))), 0.0).xyz;
    vec4 f19 = ((texture2DGradARB(SpecularMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, f6, dFdx(f7), dFdy(f7)) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z);
    float f20 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f21 = VARYING4.yzx - (VARYING4.yzx * f20);
    vec4 f22 = vec4(clamp(f20, 0.0, 1.0));
    vec4 f23 = mix(texture3D(LightMapTexture, f21), vec4(0.0), f22);
    vec4 f24 = mix(texture3D(LightGridSkylightTexture, f21), vec4(1.0), f22);
    vec3 f25 = (f23.xyz * (f23.w * 120.0)).xyz;
    float f26 = f24.x;
    vec4 f27 = texture2D(ShadowMapTexture, VARYING5.xy);
    float f28 = (1.0 - ((step(f27.x, VARYING5.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f27.y)) * f24.y;
    vec3 f29 = normalize(VARYING7.xyz);
    vec3 f30 = (f12 * f12).xyz;
    float f31 = f19.y;
    float f32 = CB0[26].w * f13;
    vec3 f33 = reflect(-f29, f18);
    vec3 f34 = -CB0[11].xyz;
    vec3 f35 = normalize(f34 + f29);
    float f36 = dot(f18, f34);
    float f37 = clamp(f36, 0.0, 1.0);
    float f38 = f31 * f31;
    float f39 = max(0.001000000047497451305389404296875, dot(f18, f35));
    float f40 = dot(f34, f35);
    float f41 = 1.0 - f40;
    float f42 = f41 * f41;
    float f43 = (f42 * f42) * f41;
    vec3 f44 = vec3(f43) + (vec3(0.039999999105930328369140625) * (1.0 - f43));
    float f45 = f38 * f38;
    float f46 = (((f39 * f45) - f39) * f39) + 1.0;
    float f47 = f31 * 5.0;
    vec3 f48 = vec4(f33, f47).xyz;
    vec4 f49 = texture2D(PrecomputedBRDFTexture, vec2(f31, max(9.9999997473787516355514526367188e-05, dot(f18, f29))));
    float f50 = f49.x;
    float f51 = f49.y;
    vec3 f52 = ((vec3(0.039999999105930328369140625) * f50) + vec3(f51)) / vec3(f50 + f51);
    vec3 f53 = (vec3(1.0) - (f52 * f32)) * 1.0;
    vec3 f54 = f18 * f18;
    bvec3 f55 = lessThan(f18, vec3(0.0));
    vec3 f56 = vec3(f55.x ? f54.x : vec3(0.0).x, f55.y ? f54.y : vec3(0.0).y, f55.z ? f54.z : vec3(0.0).z);
    vec3 f57 = f54 - f56;
    float f58 = f57.x;
    float f59 = f57.y;
    float f60 = f57.z;
    float f61 = f56.x;
    float f62 = f56.y;
    float f63 = f56.z;
    vec3 f64 = (mix(textureCubeLod(PrefilteredEnvIndoorTexture, f48, f47).xyz * f25, textureCubeLod(PrefilteredEnvTexture, f48, f47).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f33.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f26)) * f52) * f32;
    vec3 f65 = (((((((((((vec3(1.0) - (f44 * f32)) * 1.0) * CB0[10].xyz) * f37) + ((CB0[12].xyz * 1.0) * clamp(-f36, 0.0, 1.0))) * f28) + (f53 * (((((((CB0[35].xyz * f58) + (CB0[37].xyz * f59)) + (CB0[39].xyz * f60)) + (CB0[36].xyz * f61)) + (CB0[38].xyz * f62)) + (CB0[40].xyz * f63)) + (((((((CB0[29].xyz * f58) + (CB0[31].xyz * f59)) + (CB0[33].xyz * f60)) + (CB0[30].xyz * f61)) + (CB0[32].xyz * f62)) + (CB0[34].xyz * f63)) * f26)))) + (CB0[27].xyz + (CB0[28].xyz * f26))) + vec3((f19.z * 2.0) * f13)) * f30) + (((((((f44 * ((f45 + (f45 * f45)) / (((f46 * f46) * ((f40 * 3.0) + 0.5)) * ((f39 * 0.75) + 0.25)))) * CB0[10].xyz) * f37) * f28) * f13) * VARYING0.w) + f64)) + (f25 * mix(f30, f64 * (1.0 / (max(max(f64.x, f64.y), f64.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f53) * f32) * (1.0 - f26)));
    vec4 f66 = vec4(f65.x, f65.y, f65.z, vec4(0.0).w);
    f66.w = 1.0;
    vec3 f67 = mix(CB0[14].xyz, sqrt(clamp(f66.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    gl_FragData[0] = vec4(f67.x, f67.y, f67.z, f66.w);
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
