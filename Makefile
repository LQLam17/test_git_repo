include $(TOPDIR)/rules.mk

PKG_NAME:=check_python_version
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/check_python_version
	SECTION:=examples
	CATEGORY:=Examples
	TITLE:=Check python version!
endef

define Package/check_python_version/description
	A simple C program to check Python version.
endef

define Build/Compile
	$(TARGET_CC) $(TARGET_CFLAGS) -o $(PKG_BUILD_DIR)/check_python_version $(PKG_BUILD_DIR)/check_python.c
endef

define Package/check_python_version/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/check_python_version $(1)/usr/bin/
endef

$(eval $(call BuildPackage,check_python_version))

