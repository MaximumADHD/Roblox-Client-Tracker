#version 150

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
    vec4 Exposure_DoFDistance;
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

struct LightShadowGPUTransform
{
    mat4 transform;
};

uniform vec4 CB0[47];
uniform vec4 CB8[24];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2DArray AlbedoMapTexture;
uniform sampler2DArray NormalMapTexture;
uniform sampler2DArray SpecularMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec3 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec3 f1 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f2 = ((texture(AlbedoMapTexture, f0).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, f1).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 f3 = f2.yz - vec2(0.5);
    float f4 = f2.x;
    float f5 = f4 - f3.y;
    vec3 f6 = vec4(vec3(f5, f4, f5) + (vec3(f3.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 f7 = CB0[7].xyz - VARYING5.xyz;
    float f8 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    float f9 = -VARYING6.x;
    vec2 f10 = (((texture(NormalMapTexture, f0) * VARYING0.x) + (texture(NormalMapTexture, f1) * VARYING0.y)) + (texture(NormalMapTexture, VARYING3.xyz) * VARYING0.z)).wy * 2.0;
    vec2 f11 = f10 - vec2(1.0);
    vec3 f12 = vec3(dot(VARYING7, VARYING0.xyz));
    vec3 f13 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f9), vec3(VARYING6.y, f9, 0.0), f12) * f11.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f12) * f11.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f10, f11), 0.0, 1.0)))), 0.0).xyz;
    vec4 f14 = ((texture(SpecularMapTexture, f0) * VARYING0.x) + (texture(SpecularMapTexture, f1) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec3 f15 = -CB0[11].xyz;
    float f16 = dot(f13, f15);
    float f17 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f18 = VARYING4.yzx - (VARYING4.yzx * f17);
    vec4 f19 = vec4(clamp(f17, 0.0, 1.0));
    vec4 f20 = mix(texture(LightMapTexture, f18), vec4(0.0), f19);
    vec4 f21 = mix(texture(LightGridSkylightTexture, f18), vec4(1.0), f19);
    vec3 f22 = (f20.xyz * (f20.w * 120.0)).xyz;
    float f23 = f21.x;
    float f24 = f21.y;
    vec3 f25 = VARYING5.xyz - CB0[41].xyz;
    vec3 f26 = VARYING5.xyz - CB0[42].xyz;
    vec3 f27 = VARYING5.xyz - CB0[43].xyz;
    vec4 f28 = vec4(VARYING5.xyz, 1.0) * mat4(CB8[((dot(f25, f25) < CB0[41].w) ? 0 : ((dot(f26, f26) < CB0[42].w) ? 1 : ((dot(f27, f27) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f25, f25) < CB0[41].w) ? 0 : ((dot(f26, f26) < CB0[42].w) ? 1 : ((dot(f27, f27) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f25, f25) < CB0[41].w) ? 0 : ((dot(f26, f26) < CB0[42].w) ? 1 : ((dot(f27, f27) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f25, f25) < CB0[41].w) ? 0 : ((dot(f26, f26) < CB0[42].w) ? 1 : ((dot(f27, f27) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f29 = textureLod(ShadowAtlasTexture, f28.xy, 0.0);
    vec2 f30 = vec2(0.0);
    f30.x = CB0[45].z;
    vec2 f31 = f30;
    f31.y = CB0[45].w;
    float f32 = (2.0 * f28.z) - 1.0;
    float f33 = exp(CB0[45].z * f32);
    float f34 = -exp((-CB0[45].w) * f32);
    vec2 f35 = (f31 * CB0[46].y) * vec2(f33, f34);
    vec2 f36 = f35 * f35;
    float f37 = f29.x;
    float f38 = max(f29.y - (f37 * f37), f36.x);
    float f39 = f33 - f37;
    float f40 = f29.z;
    float f41 = max(f29.w - (f40 * f40), f36.y);
    float f42 = f34 - f40;
    float f43 = (f16 > 0.0) ? mix(f24, mix(min((f33 <= f37) ? 1.0 : clamp(((f38 / (f38 + (f39 * f39))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f34 <= f40) ? 1.0 : clamp(((f41 / (f41 + (f42 * f42))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f24, clamp((length(VARYING5.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    vec3 f44 = normalize(f7);
    vec3 f45 = (f6 * f6).xyz;
    float f46 = f14.y;
    float f47 = CB0[26].w * f8;
    vec3 f48 = reflect(-f44, f13);
    vec3 f49 = normalize(f15 + f44);
    float f50 = clamp(f16, 0.0, 1.0);
    float f51 = f46 * f46;
    float f52 = max(0.001000000047497451305389404296875, dot(f13, f49));
    float f53 = dot(f15, f49);
    float f54 = 1.0 - f53;
    float f55 = f54 * f54;
    float f56 = (f55 * f55) * f54;
    vec3 f57 = vec3(f56) + (vec3(0.039999999105930328369140625) * (1.0 - f56));
    float f58 = f51 * f51;
    float f59 = (((f52 * f58) - f52) * f52) + 1.0;
    float f60 = f46 * 5.0;
    vec3 f61 = vec4(f48, f60).xyz;
    vec4 f62 = texture(PrecomputedBRDFTexture, vec2(f46, max(9.9999997473787516355514526367188e-05, dot(f13, f44))));
    float f63 = f62.x;
    float f64 = f62.y;
    vec3 f65 = ((vec3(0.039999999105930328369140625) * f63) + vec3(f64)) / vec3(f63 + f64);
    vec3 f66 = f65 * f47;
    vec3 f67 = f13 * f13;
    bvec3 f68 = lessThan(f13, vec3(0.0));
    vec3 f69 = vec3(f68.x ? f67.x : vec3(0.0).x, f68.y ? f67.y : vec3(0.0).y, f68.z ? f67.z : vec3(0.0).z);
    vec3 f70 = f67 - f69;
    float f71 = f70.x;
    float f72 = f70.y;
    float f73 = f70.z;
    float f74 = f69.x;
    float f75 = f69.y;
    float f76 = f69.z;
    vec3 f77 = (mix(textureLod(PrefilteredEnvIndoorTexture, f61, f60).xyz * f22, textureLod(PrefilteredEnvTexture, f61, f60).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f48.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f23)) * f65) * f47;
    vec3 f78 = (((((((((vec3(1.0) - (f57 * f47)) * CB0[10].xyz) * f50) * f43) + ((vec3(1.0) - f66) * (((((((CB0[35].xyz * f71) + (CB0[37].xyz * f72)) + (CB0[39].xyz * f73)) + (CB0[36].xyz * f74)) + (CB0[38].xyz * f75)) + (CB0[40].xyz * f76)) + (((((((CB0[29].xyz * f71) + (CB0[31].xyz * f72)) + (CB0[33].xyz * f73)) + (CB0[30].xyz * f74)) + (CB0[32].xyz * f75)) + (CB0[34].xyz * f76)) * f23)))) + (CB0[27].xyz + (CB0[28].xyz * f23))) + vec3((f14.z * 2.0) * f8)) * f45) + ((((((f57 * (((f58 + (f58 * f58)) / (((f59 * f59) * ((f53 * 3.0) + 0.5)) * ((f52 * 0.75) + 0.25))) * f50)) * CB0[10].xyz) * f43) * f8) * VARYING0.w) + f77)) + (f22 * mix(f45, f77 * (1.0 / (max(max(f77.x, f77.y), f77.z) + 0.00999999977648258209228515625)), f66 * (f47 * (1.0 - f23))));
    vec4 f79 = vec4(f78.x, f78.y, f78.z, vec4(0.0).w);
    f79.w = 1.0;
    float f80 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f81 = textureLod(PrefilteredEnvTexture, vec4(-f7, 0.0).xyz, max(CB0[13].y, f80) * 5.0).xyz;
    bvec3 f82 = bvec3(CB0[13].w != 0.0);
    vec3 f83 = sqrt(clamp(mix(vec3(f82.x ? CB0[14].xyz.x : f81.x, f82.y ? CB0[14].xyz.y : f81.y, f82.z ? CB0[14].xyz.z : f81.z), f79.xyz, vec3(f80)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f83.x, f83.y, f83.z, f79.w);
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s2
