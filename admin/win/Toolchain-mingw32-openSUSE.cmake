SET(MINGW_PREFIX  "i686-w64-mingw32")

# this one is important
SET(CMAKE_SYSTEM_NAME Windows)

# specify the cross compiler
SET(CMAKE_C_COMPILER ccache ${MINGW_PREFIX}-gcc)
SET(CMAKE_CXX_COMPILER ccache ${MINGW_PREFIX}-g++)
SET(CMAKE_RC_COMPILER /usr/bin/${MINGW_PREFIX}-windres)

# where is the target environment containing libraries
SET(CMAKE_FIND_ROOT_PATH  /usr/${MINGW_PREFIX}/sys-root/mingw)
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY  ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE  ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM  NEVER)



# libs with broken find modules
SET(QT_PLUGINS_DIR  ${CMAKE_FIND_ROOT_PATH}/lib/qt4/plugins/)
SET(QT_QTUITOOLS_LIBRARY_RELEASE  ${CMAKE_FIND_ROOT_PATH}/lib/libQtUiTools.a)
SET(QT_QTUITOOLS_LIBRARY_DEBUG  ${CMAKE_FIND_ROOT_PATH}/lib/libQtUiToolsd.a)
SET(QT_QTUITOOLS_LIBRARY  ${QT_QTUITOOLS_LIBRARY_RELEASE})