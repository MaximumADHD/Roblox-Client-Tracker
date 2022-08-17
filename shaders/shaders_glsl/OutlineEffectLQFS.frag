#version 110

uniform vec4 CB6[64];
uniform sampler2D Texture0Texture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = texture2D(Texture0Texture, VARYING0);
    int f1 = int(floor(f0.x * 255.5));
    if (CB6[f1 * 1 + 0].w <= 0.0)
    {
        discard;
    }
    vec3 f2 = CB6[f1 * 1 + 0].xyz * CB6[f1 * 1 + 0].w;
    vec4 f3 = CB6[f1 * 1 + 0];
    f3.x = f2.x;
    vec4 f4 = f3;
    f4.y = f2.y;
    vec4 f5 = f4;
    f5.z = f2.z;
    gl_FragData[0] = f5;
}

//$$Texture0Texture=s0
