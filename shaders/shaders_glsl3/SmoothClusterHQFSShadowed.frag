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
uniform sampler2DArray SpecularMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
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
    vec3 f9 = normalize(VARYING6);
    vec4 f10 = ((texture(SpecularMapTexture, f0) * VARYING0.x) + (texture(SpecularMapTexture, f1) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec3 f11 = -CB0[11].xyz;
    float f12 = dot(f9, f11);
    float f13 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f14 = VARYING4.yzx - (VARYING4.yzx * f13);
    vec4 f15 = vec4(clamp(f13, 0.0, 1.0));
    vec4 f16 = mix(texture(LightMapTexture, f14), vec4(0.0), f15);
    vec4 f17 = mix(texture(LightGridSkylightTexture, f14), vec4(1.0), f15);
    vec3 f18 = (f16.xyz * (f16.w * 120.0)).xyz;
    float f19 = f17.x;
    float f20 = f17.y;
    vec3 f21 = VARYING5.xyz - CB0[41].xyz;
    vec3 f22 = VARYING5.xyz - CB0[42].xyz;
    vec3 f23 = VARYING5.xyz - CB0[43].xyz;
    vec4 f24 = vec4(VARYING5.xyz, 1.0) * mat4(CB8[((dot(f21, f21) < CB0[41].w) ? 0 : ((dot(f22, f22) < CB0[42].w) ? 1 : ((dot(f23, f23) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f21, f21) < CB0[41].w) ? 0 : ((dot(f22, f22) < CB0[42].w) ? 1 : ((dot(f23, f23) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f21, f21) < CB0[41].w) ? 0 : ((dot(f22, f22) < CB0[42].w) ? 1 : ((dot(f23, f23) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f21, f21) < CB0[41].w) ? 0 : ((dot(f22, f22) < CB0[42].w) ? 1 : ((dot(f23, f23) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f25 = textureLod(ShadowAtlasTexture, f24.xy, 0.0);
    vec2 f26 = vec2(0.0);
    f26.x = CB0[45].z;
    vec2 f27 = f26;
    f27.y = CB0[45].w;
    float f28 = (2.0 * f24.z) - 1.0;
    float f29 = exp(CB0[45].z * f28);
    float f30 = -exp((-CB0[45].w) * f28);
    vec2 f31 = (f27 * CB0[46].y) * vec2(f29, f30);
    vec2 f32 = f31 * f31;
    float f33 = f25.x;
    float f34 = max(f25.y - (f33 * f33), f32.x);
    float f35 = f29 - f33;
    float f36 = f25.z;
    float f37 = max(f25.w - (f36 * f36), f32.y);
    float f38 = f30 - f36;
    float f39 = (f12 > 0.0) ? mix(f20, mix(min((f29 <= f33) ? 1.0 : clamp(((f34 / (f34 + (f35 * f35))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f30 <= f36) ? 1.0 : clamp(((f37 / (f37 + (f38 * f38))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f20, clamp((length(VARYING5.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    vec3 f40 = normalize(f7);
    vec3 f41 = (f6 * f6).xyz;
    float f42 = f10.y;
    float f43 = CB0[26].w * f8;
    vec3 f44 = reflect(-f40, f9);
    vec3 f45 = normalize(f11 + f40);
    float f46 = clamp(f12, 0.0, 1.0);
    float f47 = f42 * f42;
    float f48 = max(0.001000000047497451305389404296875, dot(f9, f45));
    float f49 = dot(f11, f45);
    float f50 = 1.0 - f49;
    float f51 = f50 * f50;
    float f52 = (f51 * f51) * f50;
    vec3 f53 = vec3(f52) + (vec3(0.039999999105930328369140625) * (1.0 - f52));
    float f54 = f47 * f47;
    float f55 = (((f48 * f54) - f48) * f48) + 1.0;
    float f56 = f42 * 5.0;
    vec3 f57 = vec4(f44, f56).xyz;
    vec4 f58 = texture(PrecomputedBRDFTexture, vec2(f42, max(9.9999997473787516355514526367188e-05, dot(f9, f40))));
    float f59 = f58.x;
    float f60 = f58.y;
    vec3 f61 = ((vec3(0.039999999105930328369140625) * f59) + vec3(f60)) / vec3(f59 + f60);
    vec3 f62 = f61 * f43;
    vec3 f63 = f9 * f9;
    bvec3 f64 = lessThan(f9, vec3(0.0));
    vec3 f65 = vec3(f64.x ? f63.x : vec3(0.0).x, f64.y ? f63.y : vec3(0.0).y, f64.z ? f63.z : vec3(0.0).z);
    vec3 f66 = f63 - f65;
    float f67 = f66.x;
    float f68 = f66.y;
    float f69 = f66.z;
    float f70 = f65.x;
    float f71 = f65.y;
    float f72 = f65.z;
    vec3 f73 = (mix(textureLod(PrefilteredEnvIndoorTexture, f57, f56).xyz * f18, textureLod(PrefilteredEnvTexture, f57, f56).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f44.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f19)) * f61) * f43;
    vec3 f74 = (((((((((vec3(1.0) - (f53 * f43)) * CB0[10].xyz) * f46) * f39) + ((vec3(1.0) - f62) * (((((((CB0[35].xyz * f67) + (CB0[37].xyz * f68)) + (CB0[39].xyz * f69)) + (CB0[36].xyz * f70)) + (CB0[38].xyz * f71)) + (CB0[40].xyz * f72)) + (((((((CB0[29].xyz * f67) + (CB0[31].xyz * f68)) + (CB0[33].xyz * f69)) + (CB0[30].xyz * f70)) + (CB0[32].xyz * f71)) + (CB0[34].xyz * f72)) * f19)))) + (CB0[27].xyz + (CB0[28].xyz * f19))) + vec3((f10.z * 2.0) * f8)) * f41) + ((((((f53 * (((f54 + (f54 * f54)) / (((f55 * f55) * ((f49 * 3.0) + 0.5)) * ((f48 * 0.75) + 0.25))) * f46)) * CB0[10].xyz) * f39) * f8) * VARYING0.w) + f73)) + (f18 * mix(f41, f73 * (1.0 / (max(max(f73.x, f73.y), f73.z) + 0.00999999977648258209228515625)), f62 * (f43 * (1.0 - f19))));
    vec4 f75 = vec4(f74.x, f74.y, f74.z, vec4(0.0).w);
    f75.w = 1.0;
    float f76 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f77 = textureLod(PrefilteredEnvTexture, vec4(-f7, 0.0).xyz, max(CB0[13].y, f76) * 5.0).xyz;
    bvec3 f78 = bvec3(CB0[13].w != 0.0);
    vec3 f79 = sqrt(clamp(mix(vec3(f78.x ? CB0[14].xyz.x : f77.x, f78.y ? CB0[14].xyz.y : f77.y, f78.z ? CB0[14].xyz.z : f77.z), f75.xyz, vec3(f76)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f79.x, f79.y, f79.z, f75.w);
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$AlbedoMapTexture=s0
//$$SpecularMapTexture=s2
