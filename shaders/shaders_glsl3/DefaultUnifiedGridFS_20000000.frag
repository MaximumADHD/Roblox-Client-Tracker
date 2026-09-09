#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <GridParam.h>
uniform vec4 CB0[61];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;

in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = (CB0[11].xyz - VARYING3.xyz) * CB3[0].x;
    vec3 f1 = abs(VARYING4.xyz);
    float f2 = f1.x;
    float f3 = f1.y;
    float f4 = f1.z;
    vec2 f5;
    if ((f2 >= f3) && (f2 >= f4))
    {
        f5 = f0.yz;
    }
    else
    {
        vec2 f6;
        if ((f3 >= f2) && (f3 >= f4))
        {
            f6 = f0.xz;
        }
        else
        {
            f6 = f0.xy;
        }
        f5 = f6;
    }
    vec4 f7 = texture(DiffuseMapTexture, f5);
    vec4 f8 = f7 * VARYING1;
    vec3 f9 = normalize(VARYING4.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f10 = f8.xyz;
    vec3 f11 = f10 * f10;
    vec4 f12 = f8;
    f12.x = f11.x;
    vec4 f13 = f12;
    f13.y = f11.y;
    vec4 f14 = f13;
    f14.z = f11.z;
    float f15 = length(VARYING3.xyz);
    vec3 f16 = VARYING3.xyz / vec3(f15);
    float f17 = CB0[31].w * clamp(1.0 - (VARYING3.w * CB0[28].y), 0.0, 1.0);
    float f18 = 0.08900000154972076416015625 + (VARYING4.w * 0.9110000133514404296875);
    vec3 f19 = reflect(-f16, f9);
    vec3 f20 = VARYING5.xyz - (CB0[16].xyz * VARYING2.w);
    float f21 = clamp(dot(step(CB0[24].xyz, abs(VARYING2.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f22 = VARYING2.yzx - (VARYING2.yzx * f21);
    vec4 f23 = texture(LightMapTexture, f22);
    vec4 f24 = texture(LightGridSkylightTexture, f22);
    vec4 f25 = vec4(clamp(f21, 0.0, 1.0));
    vec4 f26 = mix(f23, vec4(0.0), f25);
    vec4 f27 = mix(f24, vec4(1.0), f25);
    float f28 = f27.x;
    vec4 f29 = texture(ShadowMapTexture, f20.xy);
    float f30 = f20.z;
    float f31 = f18 * 5.0;
    bool f32 = !(CB0[58].x == 2.0);
    mat3 f33 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz));
    vec3 f34 = f33 * f19;
    bvec3 f35 = bvec3(f32);
    vec3 f36 = vec4(f19, f31).xyz;
    vec3 f37 = textureLod(PrefilteredEnvIndoorTexture, f36, f31).xyz;
    vec3 f38;
    if (CB0[32].w == 0.0)
    {
        f38 = f37;
    }
    else
    {
        f38 = mix(f37, textureLod(PrefilteredEnvBlendTargetTexture, f36, f31).xyz, vec3(CB0[32].w));
    }
    vec4 f39 = texture(PrecomputedBRDFTexture, vec2(f18, max(9.9999997473787516355514526367188e-05, dot(f9, f16))));
    float f40 = f39.x;
    float f41 = f39.y;
    vec3 f42 = ((vec3(0.039999999105930328369140625) * f40) + vec3(f41)) / vec3(f40 + f41);
    vec3 f43 = f9 * f9;
    bvec3 f44 = lessThan(f9, vec3(0.0));
    vec3 f45 = vec3(f44.x ? f43.x : vec3(0.0).x, f44.y ? f43.y : vec3(0.0).y, f44.z ? f43.z : vec3(0.0).z);
    vec3 f46 = f43 - f45;
    float f47 = f46.x;
    float f48 = f46.y;
    float f49 = f46.z;
    float f50 = f45.x;
    float f51 = f45.y;
    float f52 = f45.z;
    vec3 f53 = -CB0[16].xyz;
    float f54 = dot(f9, f53) * ((1.0 - ((step(f29.x, f30) * clamp(CB0[29].z + (CB0[29].w * abs(f30 - 0.5)), 0.0, 1.0)) * f29.y)) * f27.y);
    vec3 f55 = normalize(f16 + f53);
    float f56 = clamp(f54, 0.0, 1.0);
    float f57 = f18 * f18;
    float f58 = max(0.001000000047497451305389404296875, dot(f9, f55));
    float f59 = dot(f53, f55);
    float f60 = 1.0 - f59;
    float f61 = f60 * f60;
    float f62 = (f61 * f61) * f60;
    vec3 f63 = vec3(f62) + (vec3(0.039999999105930328369140625) * (1.0 - f62));
    float f64 = f57 * f57;
    float f65 = (((f58 * f64) - f58) * f58) + 1.0;
    vec3 f66 = (((((((vec3(1.0) - (f42 * f17)) * (((((((CB0[40].xyz * f47) + (CB0[42].xyz * f48)) + (CB0[44].xyz * f49)) + (CB0[41].xyz * f50)) + (CB0[43].xyz * f51)) + (CB0[45].xyz * f52)) + (((((((CB0[34].xyz * f47) + (CB0[36].xyz * f48)) + (CB0[38].xyz * f49)) + (CB0[35].xyz * f50)) + (CB0[37].xyz * f51)) + (CB0[39].xyz * f52)) * f28))) * 1.0) + ((CB0[32].xyz + (CB0[33].xyz * f28)) * 1.0)) + ((((vec3(1.0) - (f63 * f17)) * CB0[15].xyz) * f56) + (CB0[17].xyz * clamp(-f54, 0.0, 1.0)))) + (f26.xyz * (f26.w * 120.0))) * f14.xyz) + (((mix(f38, textureLod(PrefilteredEnvTexture, vec4(vec3(f35.x ? f34.x : f19.x, f35.y ? f34.y : f19.y, f35.z ? f34.z : f19.z), f31).xyz, f31).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f19.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f28)) * f42) * f17) + (((f63 * (((f64 + (f64 * f64)) / (((f65 * f65) * ((f59 * 3.0) + 0.5)) * ((f58 * 0.75) + 0.25))) * f56)) * CB0[15].xyz) * 1.0));
    vec4 f67 = vec4(0.0);
    f67.x = f66.x;
    vec4 f68 = f67;
    f68.y = f66.y;
    vec4 f69 = f68;
    f69.z = f66.z;
    float f70 = f8.w;
    vec4 f71 = f69;
    f71.w = f70;
    float f72 = clamp(exp2((CB0[18].z * f15) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f73;
    do
    {
        if ((CB0[18].w > 0.5) || (CB0[28].w > 0.5))
        {
            f73 = CB0[19].xyz;
            break;
        }
        vec3 f74 = f33 * f16;
        bvec3 f75 = bvec3(f32 && (!(CB0[58].w == 0.0)));
        f73 = textureLod(PrefilteredEnvTexture, vec4(-vec3(f75.x ? f74.x : f16.x, f75.y ? f74.y : f16.y, f75.z ? f74.z : f16.z), 0.0).xyz, max(CB0[18].y, f72) * 5.0).xyz;
        break;
    } while(false);
    vec3 f76 = mix(f73, f71.xyz, vec3(f72));
    vec4 f77 = f71;
    f77.x = f76.x;
    vec4 f78 = f77;
    f78.y = f76.y;
    vec4 f79 = f78;
    f79.z = f76.z;
    vec3 f80 = sqrt(clamp(f79.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f81 = f79;
    f81.x = f80.x;
    vec4 f82 = f81;
    f82.y = f80.y;
    vec4 f83 = f82;
    f83.z = f80.z;
    vec4 f84 = f83;
    f84.w = f70;
    _entryPointOutput = f84;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
