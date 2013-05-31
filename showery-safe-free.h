/* common header for safely free the poiter */
/* author: showery yfhall@yahoo.cn  copyright: <����Ӣ�������豸���޹�˾>*/

#pragma once

template< typename T_Delete >
inline void safe_delete( T_Delete **pp )
{
    if ( *pp!=NULL )
        delete( *pp );
    *pp = NULL;
}

template< typename T_Release >void safe_release( T_Release **pp )
{
    if ( *pp!=NULL )
    {
        ( *pp )->Release();
        *pp = NULL;
    }
}