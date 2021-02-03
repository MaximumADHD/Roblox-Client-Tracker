#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    vec4 f2 = texture(DiffuseMapTexture, VARYING0) * VARYING2;
    vec3 f3 = f2.xyz;
    vec3 f4 = VARYING6.xyz - (CB0[11].xyz * VARYING3.w);
    float f5 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f6 = VARYING3.yzx - (VARYING3.yzx * f5);
    vec4 f7 = vec4(clamp(f5, 0.0, 1.0));
    vec4 f8 = mix(texture(LightMapTexture, f6), vec4(0.0), f7);
    vec4 f9 = mix(texture(LightGridSkylightTexture, f6), vec4(1.0), f7);
    float f10 = f9.x;
    vec4 f11 = texture(ShadowMapTexture, f4.xy);
    float f12 = f4.z;
    vec3 f13 = (f3 * f3).xyz;
    float f14 = CB0[26].w * clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec3 f15 = normalize(VARYING5.xyz);
    float f16 = max(VARYING5.w, 0.04500000178813934326171875);
    vec3 f17 = reflect(-f1, f15);
    float f18 = f16 * 5.0;
    vec3 f19 = vec4(f17, f18).xyz;
    vec4 f20 = texture(PrecomputedBRDFTexture, vec2(f16, max(9.9999997473787516355514526367188e-05, dot(f15, f1))));
    float f21 = VARYING6.w * f14;
    vec3 f22 = mix(vec3(0.039999999105930328369140625), f13, vec3(f21));
    vec3 f23 = -CB0[11].xyz;
    float f24 = dot(f15, f23) * ((1.0 - ((step(f11.x, f12) * clamp(CB0[24].z + (CB0[24].w * abs(f12 - 0.5)), 0.0, 1.0)) * f11.y)) * f9.y);
    vec3 f25 = normalize(f23 + f1);
    float f26 = clamp(f24, 0.0, 1.0);
    float f27 = f16 * f16;
    float f28 = max(0.001000000047497451305389404296875, dot(f15, f25));
    float f29 = dot(f23, f25);
    float f30 = 1.0 - f29;
    float f31 = f30 * f30;
    float f32 = (f31 * f31) * f30;
    vec3 f33 = vec3(f32) + (f22 * (1.0 - f32));
    float f34 = f27 * f27;
    float f35 = (((f28 * f34) - f28) * f28) + 1.0;
    float f36 = 1.0 - f21;
    float f37 = f14 * f36;
    vec3 f38 = vec3(f36);
    float f39 = f20.x;
    float f40 = f20.y;
    vec3 f41 = ((f22 * f39) + vec3(f40)) / vec3(f39 + f40);
    vec3 f42 = f38 - (f41 * f37);
    vec3 f43 = f15 * f15;
    bvec3 f44 = lessThan(f15, vec3(0.0));
    vec3 f45 = vec3(f44.x ? f43.x : vec3(0.0).x, f44.y ? f43.y : vec3(0.0).y, f44.z ? f43.z : vec3(0.0).z);
    vec3 f46 = f43 - f45;
    float f47 = f46.x;
    float f48 = f46.y;
    float f49 = f46.z;
    float f50 = f45.x;
    float f51 = f45.y;
    float f52 = f45.z;
    vec3 f53 = ((((((CB0[35].xyz * f47) + (CB0[37].xyz * f48)) + (CB0[39].xyz * f49)) + (CB0[36].xyz * f50)) + (CB0[38].xyz * f51)) + (CB0[40].xyz * f52)) + (((((((CB0[29].xyz * f47) + (CB0[31].xyz * f48)) + (CB0[33].xyz * f49)) + (CB0[30].xyz * f50)) + (CB0[32].xyz * f51)) + (CB0[34].xyz * f52)) * f10);
    vec3 f54 = (mix(textureLod(PrefilteredEnvIndoorTexture, f19, f18).xyz, textureLod(PrefilteredEnvTexture, f19, f18).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f17.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f10)) * f41) * f14;
    vec3 f55 = ((((((((f38 - (f33 * f37)) * CB0[10].xyz) * f26) + (CB0[12].xyz * (f36 * clamp(-f24, 0.0, 1.0)))) + ((f42 * f53) * CB0[25].w)) + ((CB0[27].xyz + (CB0[28].xyz * f10)) * 1.0)) * f13) + (((f33 * (((f34 + (f34 * f34)) / (((f35 * f35) * ((f29 * 3.0) + 0.5)) * ((f28 * 0.75) + 0.25))) * f26)) * CB0[10].xyz) + (f54 * f10))) + (((f8.xyz * (f8.w * 120.0)).xyz * mix(f13, f54 * (1.0 / (max(max(f53.x, f53.y), f53.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f42) * (f14 * (1.0 - f10)))) * 1.0);
    float f56 = f2.w;
    vec4 f57 = vec4(f55.x, f55.y, f55.z, vec4(0.0).w);
    f57.w = f56;
    float f58 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f59 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f58) * 5.0).xyz;
    bvec3 f60 = bvec3(CB0[13].w != 0.0);
    vec3 f61 = sqrt(clamp(mix(vec3(f60.x ? CB0[14].xyz.x : f59.x, f60.y ? CB0[14].xyz.y : f59.y, f60.z ? CB0[14].xyz.z : f59.z), f57.xyz, vec3(f58)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f62 = vec4(f61.x, f61.y, f61.z, f57.w);
    f62.w = f56;
    _entryPointOutput = f62;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
