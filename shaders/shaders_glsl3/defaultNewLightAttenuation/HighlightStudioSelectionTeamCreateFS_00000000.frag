#version 150

uniform vec4 CB13[16];
uniform sampler2D Texture0Texture;

out vec4 _entryPointOutput;

void main()
{
    if (gl_FragCoord.z <= texelFetch(Texture0Texture, ivec3(ivec2(gl_FragCoord.xy), 0).xy, 0).x)
    {
        discard;
    }
    _entryPointOutput = CB13[0];
}

//$$Texture0Texture=s0
