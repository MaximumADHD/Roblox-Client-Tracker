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
uniform sampler2D SpecularMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec4 VARYING7;

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
    vec3 f14 = normalize(VARYING6);
    vec4 f15 = ((texture2DGradARB(SpecularMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, f6, dFdx(f7), dFdy(f7)) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z);
    float f16 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f17 = VARYING4.yzx - (VARYING4.yzx * f16);
    vec4 f18 = vec4(clamp(f16, 0.0, 1.0));
    vec4 f19 = mix(texture3D(LightMapTexture, f17), vec4(0.0), f18);
    vec4 f20 = mix(texture3D(LightGridSkylightTexture, f17), vec4(1.0), f18);
    vec3 f21 = (f19.xyz * (f19.w * 120.0)).xyz;
    float f22 = f20.x;
    vec4 f23 = texture2D(ShadowMapTexture, VARYING5.xy);
    float f24 = (1.0 - ((step(f23.x, VARYING5.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f23.y)) * f20.y;
    vec3 f25 = normalize(VARYING7.xyz);
    vec3 f26 = (f12 * f12).xyz;
    float f27 = f15.y;
    float f28 = CB0[26].w * f13;
    vec3 f29 = reflect(-f25, f14);
    vec3 f30 = -CB0[11].xyz;
    vec3 f31 = normalize(f30 + f25);
    float f32 = dot(f14, f30);
    float f33 = clamp(f32, 0.0, 1.0);
    float f34 = f27 * f27;
    float f35 = max(0.001000000047497451305389404296875, dot(f14, f31));
    float f36 = dot(f30, f31);
    float f37 = 1.0 - f36;
    float f38 = f37 * f37;
    float f39 = (f38 * f38) * f37;
    vec3 f40 = vec3(f39) + (vec3(0.039999999105930328369140625) * (1.0 - f39));
    float f41 = f34 * f34;
    float f42 = (((f35 * f41) - f35) * f35) + 1.0;
    float f43 = f27 * 5.0;
    vec3 f44 = vec4(f29, f43).xyz;
    vec4 f45 = texture2D(PrecomputedBRDFTexture, vec2(f27, max(9.9999997473787516355514526367188e-05, dot(f14, f25))));
    float f46 = f45.x;
    float f47 = f45.y;
    vec3 f48 = ((vec3(0.039999999105930328369140625) * f46) + vec3(f47)) / vec3(f46 + f47);
    vec3 f49 = (vec3(1.0) - (f48 * f28)) * 1.0;
    vec3 f50 = f14 * f14;
    bvec3 f51 = lessThan(f14, vec3(0.0));
    vec3 f52 = vec3(f51.x ? f50.x : vec3(0.0).x, f51.y ? f50.y : vec3(0.0).y, f51.z ? f50.z : vec3(0.0).z);
    vec3 f53 = f50 - f52;
    float f54 = f53.x;
    float f55 = f53.y;
    float f56 = f53.z;
    float f57 = f52.x;
    float f58 = f52.y;
    float f59 = f52.z;
    vec3 f60 = (mix(textureCubeLod(PrefilteredEnvIndoorTexture, f44, f43).xyz * f21, textureCubeLod(PrefilteredEnvTexture, f44, f43).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f29.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f22)) * f48) * f28;
    vec3 f61 = (((((((((((vec3(1.0) - (f40 * f28)) * 1.0) * CB0[10].xyz) * f33) + ((CB0[12].xyz * 1.0) * clamp(-f32, 0.0, 1.0))) * f24) + (f49 * (((((((CB0[35].xyz * f54) + (CB0[37].xyz * f55)) + (CB0[39].xyz * f56)) + (CB0[36].xyz * f57)) + (CB0[38].xyz * f58)) + (CB0[40].xyz * f59)) + (((((((CB0[29].xyz * f54) + (CB0[31].xyz * f55)) + (CB0[33].xyz * f56)) + (CB0[30].xyz * f57)) + (CB0[32].xyz * f58)) + (CB0[34].xyz * f59)) * f22)))) + (CB0[27].xyz + (CB0[28].xyz * f22))) + vec3((f15.z * 2.0) * f13)) * f26) + (((((((f40 * ((f41 + (f41 * f41)) / (((f42 * f42) * ((f36 * 3.0) + 0.5)) * ((f35 * 0.75) + 0.25)))) * CB0[10].xyz) * f33) * f24) * f13) * VARYING0.w) + f60)) + (f21 * mix(f26, f60 * (1.0 / (max(max(f60.x, f60.y), f60.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f49) * f28) * (1.0 - f22)));
    vec4 f62 = vec4(f61.x, f61.y, f61.z, vec4(0.0).w);
    f62.w = 1.0;
    vec3 f63 = mix(CB0[14].xyz, sqrt(clamp(f62.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    gl_FragData[0] = vec4(f63.x, f63.y, f63.z, f62.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$AlbedoMapTexture=s0
//$$SpecularMapTexture=s2
