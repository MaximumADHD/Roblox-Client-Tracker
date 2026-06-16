#version 150

uniform sampler2D Texture0Texture;

flat in uint VARYING0;
out vec4 _entryPointOutput;

void main()
{
    uint f0 = (VARYING0 >> uint(8)) & 255u;
    bool f1 = f0 != 0u;
    if (f1)
    {
        if (gl_FragCoord.z <= texelFetch(Texture0Texture, ivec3(ivec2(gl_FragCoord.xy), 0).xy, 0).x)
        {
            discard;
        }
    }
    vec4 f2;
    do
    {
        if (f1)
        {
            f2 = vec4(float(f0) * 0.0039215688593685626983642578125, 0.0, 0.0, 0.0);
            break;
        }
        f2 = vec4(1.0 - (float((VARYING0 >> uint(24)) & 255u) * 0.0039215688593685626983642578125), 0.0, 0.0, 0.0);
        break;
    } while(false);
    _entryPointOutput = f2;
}

//$$Texture0Texture=s0
