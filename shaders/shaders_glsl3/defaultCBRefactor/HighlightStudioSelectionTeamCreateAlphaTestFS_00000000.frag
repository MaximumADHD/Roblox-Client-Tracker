#version 150

uniform vec4 CB13[16];
uniform sampler2D DiffuseMapTexture;
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    if (texture(DiffuseMapTexture, VARYING0).w < 0.2520000040531158447265625)
    {
        discard;
    }
    if (gl_FragCoord.z <= texelFetch(Texture0Texture, ivec3(ivec2(gl_FragCoord.xy), 0).xy, 0).x)
    {
        discard;
    }
    _entryPointOutput = CB13[0];
}

//$$DiffuseMapTexture=s3
//$$Texture0Texture=s0
