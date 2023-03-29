#version 110

uniform vec4 CB13[16];
uniform sampler2D Texture0Texture;

void main()
{
    if (gl_FragCoord.z <= texelFetch2D(Texture0Texture, ivec3(ivec2(gl_FragCoord.xy), 0).xy, 0).x)
    {
        discard;
    }
    gl_FragData[0] = CB13[0];
}

//$$Texture0Texture=s0
