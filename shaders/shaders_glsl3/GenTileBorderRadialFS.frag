#version 150

const vec4 f0[10] = vec4[](vec4(-0.5, -0.5, 0.5, -0.5), vec4(-0.5, 0.5, 0.5, 0.5), vec4(-1.5, -0.5, 1.5, -0.5), vec4(-0.5, -1.5, 0.5, -1.5), vec4(-1.5, 0.5, 1.5, 0.5), vec4(-0.5, 1.5, 0.5, 1.5), vec4(-3.5, -0.5, 3.5, -0.5), vec4(-0.5, -3.5, 0.5, -3.5), vec4(-3.5, 0.5, 3.5, 0.5), vec4(-0.5, 3.5, 0.5, 3.5));

uniform uvec4 CB0[1];
uniform sampler2DArray TileInTexture;

out vec4 _entryPointOutput_tex0;
out vec4 _entryPointOutput_tex1;
out vec4 _entryPointOutput_tex2;

void main()
{
    int f1;
    int f2;
    ivec2 f3 = ivec2(gl_FragCoord.xy);
    uvec2 f4 = uvec2(CB0[0].x);
    ivec2 f5 = ivec2((uvec2(f3) / f4) * f4);
    ivec2 f6 = ivec2((uvec2(f5) + f4) - uvec2(1u));
    vec4 f7;
    do
    {
        f1 = f3.x;
        f2 = f3.y;
        vec4 f8 = texelFetch(TileInTexture, ivec4(f1, f2, 0, 0).xyz, 0);
        if (f8.w >= 0.5)
        {
            f7 = f8;
            break;
        }
        vec2 f9 = vec2(1.0) / vec2(float(CB0[0].y));
        vec2 f10 = (vec2(f3) + vec2(0.5)) * f9;
        vec2 f11 = (vec2(f5) + vec2(0.5)) * f9;
        vec2 f12 = (vec2(f6) + vec2(0.5)) * f9;
        bool f13;
        vec4 f14;
        int f15 = 0;
        for (;;)
        {
            if (f15 < 10)
            {
                vec4 f16 = textureLod(TileInTexture, vec3(clamp(f10 + (f0[f15].xy * f9), f11, f12), 0.0), 0.0);
                vec4 f17 = textureLod(TileInTexture, vec3(clamp(f10 + (f0[f15].zw * f9), f11, f12), 0.0), 0.0);
                float f18 = f16.w;
                if (f18 > 0.0)
                {
                    f14 = vec4(f16.xyz / vec3(f18), 1.0);
                    f13 = true;
                    break;
                }
                float f19 = f17.w;
                if (f19 > 0.0)
                {
                    f14 = vec4(f17.xyz / vec3(f19), 1.0);
                    f13 = true;
                    break;
                }
                f15++;
                continue;
            }
            else
            {
                f14 = vec4(0.0);
                f13 = false;
                break;
            }
        }
        if (f13)
        {
            f7 = f14;
            break;
        }
        f7 = f8;
        break;
    } while(false);
    vec4 f20;
    do
    {
        vec4 f21 = texelFetch(TileInTexture, ivec4(f1, f2, 1, 0).xyz, 0);
        if (f21.w >= 0.5)
        {
            f20 = f21;
            break;
        }
        vec2 f22 = vec2(1.0) / vec2(float(CB0[0].y));
        vec2 f23 = (vec2(f3) + vec2(0.5)) * f22;
        vec2 f24 = (vec2(f5) + vec2(0.5)) * f22;
        vec2 f25 = (vec2(f6) + vec2(0.5)) * f22;
        bool f26;
        vec4 f27;
        int f28 = 0;
        for (;;)
        {
            if (f28 < 10)
            {
                vec4 f29 = textureLod(TileInTexture, vec3(clamp(f23 + (f0[f28].xy * f22), f24, f25), 1.0), 0.0);
                vec4 f30 = textureLod(TileInTexture, vec3(clamp(f23 + (f0[f28].zw * f22), f24, f25), 1.0), 0.0);
                float f31 = f29.w;
                if (f31 > 0.0)
                {
                    f27 = vec4(f29.xyz / vec3(f31), 1.0);
                    f26 = true;
                    break;
                }
                float f32 = f30.w;
                if (f32 > 0.0)
                {
                    f27 = vec4(f30.xyz / vec3(f32), 1.0);
                    f26 = true;
                    break;
                }
                f28++;
                continue;
            }
            else
            {
                f27 = vec4(0.0);
                f26 = false;
                break;
            }
        }
        if (f26)
        {
            f20 = f27;
            break;
        }
        f20 = f21;
        break;
    } while(false);
    vec4 f33;
    do
    {
        vec4 f34 = texelFetch(TileInTexture, ivec4(f1, f2, 2, 0).xyz, 0);
        if (f34.w >= 0.5)
        {
            f33 = f34;
            break;
        }
        vec2 f35 = vec2(1.0) / vec2(float(CB0[0].y));
        vec2 f36 = (vec2(f3) + vec2(0.5)) * f35;
        vec2 f37 = (vec2(f5) + vec2(0.5)) * f35;
        vec2 f38 = (vec2(f6) + vec2(0.5)) * f35;
        bool f39;
        vec4 f40;
        int f41 = 0;
        for (;;)
        {
            if (f41 < 10)
            {
                vec4 f42 = textureLod(TileInTexture, vec3(clamp(f36 + (f0[f41].xy * f35), f37, f38), 2.0), 0.0);
                vec4 f43 = textureLod(TileInTexture, vec3(clamp(f36 + (f0[f41].zw * f35), f37, f38), 2.0), 0.0);
                float f44 = f42.w;
                if (f44 > 0.0)
                {
                    f40 = vec4(f42.xyz / vec3(f44), 1.0);
                    f39 = true;
                    break;
                }
                float f45 = f43.w;
                if (f45 > 0.0)
                {
                    f40 = vec4(f43.xyz / vec3(f45), 1.0);
                    f39 = true;
                    break;
                }
                f41++;
                continue;
            }
            else
            {
                f40 = vec4(0.0);
                f39 = false;
                break;
            }
        }
        if (f39)
        {
            f33 = f40;
            break;
        }
        f33 = f34;
        break;
    } while(false);
    _entryPointOutput_tex0 = f7;
    _entryPointOutput_tex1 = f20;
    _entryPointOutput_tex2 = f33;
}

//$$TileInTexture=s0
