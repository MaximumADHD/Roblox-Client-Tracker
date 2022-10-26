#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[58];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;

in vec2 VARYING0;
in vec3 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    vec2 f2 = VARYING1.xy;
    f2.y = (fract(VARYING1.y) + VARYING1.z) * 0.25;
    float f3 = clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    vec4 f4 = texture(NormalMapTexture, f2);
    vec2 f5 = f4.wy * 2.0;
    vec2 f6 = f5 - vec2(1.0);
    float f7 = sqrt(clamp(1.0 + dot(vec2(1.0) - f5, f6), 0.0, 1.0));
    vec3 f8 = vec3(f6, f7);
    vec2 f9 = f8.xy + (vec3((texture(NormalDetailMapTexture, VARYING0 * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)));
    vec3 f10 = f8;
    f10.x = f9.x;
    vec3 f11 = f10;
    f11.y = f9.y;
    vec2 f12 = f11.xy * (f3 * CB2[3].w);
    vec4 f13 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, f2).x * 2.0), VARYING2.w);
    float f14 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f15 = VARYING6.xyz * f14;
    vec3 f16 = VARYING5.xyz * f14;
    vec3 f17 = normalize(((f15 * f12.x) + (cross(f16, f15) * f12.y)) + (f16 * f7));
    vec3 f18 = f13.xyz;
    vec3 f19 = f18 * f18;
    vec4 f20 = f13;
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = f19.z;
    float f23 = CB0[31].w * f3;
    float f24 = 0.08900000154972076416015625 + (CB2[0].y * 0.9110000133514404296875);
    vec3 f25 = -f1;
    vec3 f26 = reflect(f25, f17);
    vec3 f27 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f28 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f29 = VARYING3.yzx - (VARYING3.yzx * f28);
    vec4 f30 = texture(LightMapTexture, f29);
    vec4 f31 = texture(LightGridSkylightTexture, f29);
    vec4 f32 = vec4(clamp(f28, 0.0, 1.0));
    vec4 f33 = mix(f30, vec4(0.0), f32);
    vec4 f34 = mix(f31, vec4(1.0), f32);
    float f35 = f34.x;
    vec4 f36 = texture(ShadowMapTexture, f27.xy);
    float f37 = f27.z;
    vec3 f38 = -CB0[16].xyz;
    float f39 = dot(f17, f38) * ((1.0 - ((step(f36.x, f37) * clamp(CB0[29].z + (CB0[29].w * abs(f37 - 0.5)), 0.0, 1.0)) * f36.y)) * f34.y);
    vec3 f40 = normalize(f1 - CB0[16].xyz);
    float f41 = clamp(f39, 0.0, 1.0);
    float f42 = f24 * f24;
    float f43 = max(0.001000000047497451305389404296875, dot(f17, f40));
    float f44 = dot(f38, f40);
    float f45 = 1.0 - f44;
    float f46 = f45 * f45;
    float f47 = (f46 * f46) * f45;
    vec3 f48 = vec3(f47) + (vec3(0.039999999105930328369140625) * (1.0 - f47));
    float f49 = f42 * f42;
    float f50 = (((f43 * f49) - f43) * f43) + 1.0;
    float f51 = f24 * 5.0;
    vec3 f52 = vec4(f26, f51).xyz;
    vec3 f53 = textureLod(PrefilteredEnvIndoorTexture, f52, f51).xyz;
    vec3 f54;
    if (CB0[32].w == 0.0)
    {
        f54 = f53;
    }
    else
    {
        f54 = mix(f53, textureLod(PrefilteredEnvBlendTargetTexture, f52, f51).xyz, vec3(CB0[32].w));
    }
    vec4 f55 = texture(PrecomputedBRDFTexture, vec2(f24, max(9.9999997473787516355514526367188e-05, dot(f17, f1))));
    float f56 = f55.x;
    float f57 = f55.y;
    vec3 f58 = ((vec3(0.039999999105930328369140625) * f56) + vec3(f57)) / vec3(f56 + f57);
    vec3 f59 = f17 * f17;
    bvec3 f60 = lessThan(f17, vec3(0.0));
    vec3 f61 = vec3(f60.x ? f59.x : vec3(0.0).x, f60.y ? f59.y : vec3(0.0).y, f60.z ? f59.z : vec3(0.0).z);
    vec3 f62 = f59 - f61;
    float f63 = f62.x;
    float f64 = f62.y;
    float f65 = f62.z;
    float f66 = f61.x;
    float f67 = f61.y;
    float f68 = f61.z;
    vec3 f69 = ((((((f33.xyz * (f33.w * 120.0)) * 1.0) + ((((vec3(1.0) - (f48 * f23)) * CB0[15].xyz) * f41) + (CB0[17].xyz * clamp(-f39, 0.0, 1.0)))) + ((vec3(1.0) - (f58 * f23)) * (((((((CB0[40].xyz * f63) + (CB0[42].xyz * f64)) + (CB0[44].xyz * f65)) + (CB0[41].xyz * f66)) + (CB0[43].xyz * f67)) + (CB0[45].xyz * f68)) + (((((((CB0[34].xyz * f63) + (CB0[36].xyz * f64)) + (CB0[38].xyz * f65)) + (CB0[35].xyz * f66)) + (CB0[37].xyz * f67)) + (CB0[39].xyz * f68)) * f35)))) + ((CB0[32].xyz + (CB0[33].xyz * f35)) * 1.0)) * f22.xyz) + ((((f48 * (((f49 + (f49 * f49)) / max(((f50 * f50) * ((f44 * 3.0) + 0.5)) * ((f43 * 0.75) + 0.25), 3.0999999580672010779380798339844e-05)) * f41)) * CB0[15].xyz) * 1.0) + ((mix(f54, textureLod(PrefilteredEnvTexture, f52, f51).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f26.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f35)) * f58) * f23));
    vec4 f70 = vec4(0.0);
    f70.x = f69.x;
    vec4 f71 = f70;
    f71.y = f69.y;
    vec4 f72 = f71;
    f72.z = f69.z;
    vec4 f73 = f72;
    f73.w = VARYING2.w;
    float f74 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f75 = textureLod(PrefilteredEnvTexture, vec4(f25, 0.0).xyz, max(CB0[18].y, f74) * 5.0).xyz;
    bvec3 f76 = bvec3(!(CB0[18].w == 0.0));
    vec3 f77 = mix(vec3(f76.x ? CB0[19].xyz.x : f75.x, f76.y ? CB0[19].xyz.y : f75.y, f76.z ? CB0[19].xyz.z : f75.z), f73.xyz, vec3(f74));
    vec4 f78 = f73;
    f78.x = f77.x;
    vec4 f79 = f78;
    f79.y = f77.y;
    vec4 f80 = f79;
    f80.z = f77.z;
    vec3 f81 = sqrt(clamp(f80.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f82 = f80;
    f82.x = f81.x;
    vec4 f83 = f82;
    f83.y = f81.y;
    vec4 f84 = f83;
    f84.z = f81.z;
    vec4 f85 = f84;
    f85.w = VARYING2.w;
    _entryPointOutput = f85;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
