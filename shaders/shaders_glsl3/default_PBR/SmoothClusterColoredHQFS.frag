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
    float debugFlagsShadows;
};

uniform vec4 CB0[47];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2DArray AlbedoMapTexture;
uniform sampler2DArray SpecularMapTexture;

in vec3 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec4 VARYING7;
in vec4 VARYING9;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec3 f1 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f2 = ((texture(AlbedoMapTexture, f0).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, f1).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 f3 = f2.yz - vec2(0.5);
    float f4 = VARYING9.x * f2.x;
    float f5 = f3.x;
    float f6 = f3.y;
    float f7 = (VARYING9.y * f5) - (VARYING9.z * f6);
    float f8 = (VARYING9.z * f5) + (VARYING9.y * f6);
    float f9 = f4 - f8;
    vec3 f10 = vec4(vec3(f9, f4, f9) + (vec3(f7, f8, f7) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f11 = clamp(1.0 - (VARYING7.w * CB0[23].y), 0.0, 1.0);
    vec3 f12 = normalize(VARYING6);
    vec4 f13 = ((texture(SpecularMapTexture, f0) * VARYING0.x) + (texture(SpecularMapTexture, f1) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    float f14 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f15 = VARYING4.yzx - (VARYING4.yzx * f14);
    vec4 f16 = vec4(clamp(f14, 0.0, 1.0));
    vec4 f17 = mix(texture(LightMapTexture, f15), vec4(0.0), f16);
    vec4 f18 = mix(texture(LightGridSkylightTexture, f15), vec4(1.0), f16);
    float f19 = f18.x;
    vec4 f20 = texture(ShadowMapTexture, VARYING5.xy);
    float f21 = (1.0 - ((step(f20.x, VARYING5.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f20.y)) * f18.y;
    vec3 f22 = normalize(VARYING7.xyz);
    vec3 f23 = (f10 * f10).xyz;
    float f24 = f13.x;
    float f25 = f13.y;
    vec3 f26 = mix(vec3(0.039999999105930328369140625), f23, vec3(f24));
    float f27 = CB0[26].w * f11;
    float f28 = f25 * 5.0;
    vec3 f29 = vec4(reflect(-f22, f12), f28).xyz;
    vec4 f30 = texture(PrecomputedBRDFTexture, vec2(f25, max(9.9999997473787516355514526367188e-05, dot(f12, f22))));
    vec3 f31 = -CB0[11].xyz;
    vec3 f32 = normalize(f31 + f22);
    float f33 = dot(f12, f31);
    float f34 = clamp(f33, 0.0, 1.0);
    float f35 = f25 * f25;
    float f36 = max(0.001000000047497451305389404296875, dot(f12, f32));
    float f37 = dot(f31, f32);
    float f38 = 1.0 - f37;
    float f39 = f38 * f38;
    float f40 = (f39 * f39) * f38;
    vec3 f41 = vec3(f40) + (f26 * (1.0 - f40));
    float f42 = f35 * f35;
    float f43 = (((f36 * f42) - f36) * f36) + 1.0;
    float f44 = 1.0 - (f24 * f27);
    float f45 = f30.x;
    float f46 = f30.y;
    vec3 f47 = ((f26 * f45) + vec3(f46)) / vec3(f45 + f46);
    vec3 f48 = (vec3(1.0) - (f47 * f27)) * f44;
    vec3 f49 = f12 * f12;
    bvec3 f50 = lessThan(f12, vec3(0.0));
    vec3 f51 = vec3(f50.x ? f49.x : vec3(0.0).x, f50.y ? f49.y : vec3(0.0).y, f50.z ? f49.z : vec3(0.0).z);
    vec3 f52 = f49 - f51;
    float f53 = f52.x;
    float f54 = f52.y;
    float f55 = f52.z;
    float f56 = f51.x;
    float f57 = f51.y;
    float f58 = f51.z;
    vec3 f59 = (mix(textureLod(PrefilteredEnvIndoorTexture, f29, f28).xyz, textureLod(PrefilteredEnvTexture, f29, f28).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f12.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f19)) * f47) * f27;
    vec3 f60 = (((((((((((vec3(1.0) - (f41 * f27)) * f44) * CB0[10].xyz) * f34) + ((CB0[12].xyz * (1.0 - (f24 * CB0[26].w))) * clamp(-f33, 0.0, 1.0))) * f21) + (f48 * (((((((CB0[35].xyz * f53) + (CB0[37].xyz * f54)) + (CB0[39].xyz * f55)) + (CB0[36].xyz * f56)) + (CB0[38].xyz * f57)) + (CB0[40].xyz * f58)) + (((((((CB0[29].xyz * f53) + (CB0[31].xyz * f54)) + (CB0[33].xyz * f55)) + (CB0[30].xyz * f56)) + (CB0[32].xyz * f57)) + (CB0[34].xyz * f58)) * f19)))) + (CB0[27].xyz + (CB0[28].xyz * f19))) + vec3((f13.z * 2.0) * f11)) * f23) + ((((((f41 * ((f42 + (f42 * f42)) / (((f43 * f43) * ((f37 * 3.0) + 0.5)) * ((f36 * 0.75) + 0.25)))) * CB0[10].xyz) * f34) * f21) * f11) + f59)) + ((f17.xyz * (f17.w * 120.0)).xyz * mix(f23, f59 * (1.0 / (max(max(f59.x, f59.y), f59.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f48) * f27) * (1.0 - f19)));
    vec4 f61 = vec4(f60.x, f60.y, f60.z, vec4(0.0).w);
    f61.w = 1.0;
    vec3 f62 = mix(CB0[14].xyz, sqrt(clamp(f61.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    _entryPointOutput = vec4(f62.x, f62.y, f62.z, f61.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$AlbedoMapTexture=s0
//$$SpecularMapTexture=s2
