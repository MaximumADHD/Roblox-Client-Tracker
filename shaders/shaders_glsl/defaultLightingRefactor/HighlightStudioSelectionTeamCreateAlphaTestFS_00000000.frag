#version 110

uniform vec4 CB13[16];
uniform sampler2D DiffuseMapTexture;
uniform sampler2D Texture0Texture;

varying vec2 VARYING0;

void main()
{
    if (texture2D(DiffuseMapTexture, VARYING0).w < 0.2520000040531158447265625)
    {
        discard;
    }
    if (gl_FragCoord.z <= texelFetch2D(Texture0Texture, ivec3(ivec2(gl_FragCoord.xy), 0).xy, 0).x)
    {
        discard;
    }
    gl_FragData[0] = CB13[0];
}

//$$DiffuseMapTexture=s3
//$$Texture0Texture=s0
