include $(TOPDIR)/rules.mk

PKG_NAME:=test_package
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/test_package
	SECTION:=testexamples
	CATEGORY:=Testexamples
	TITLE:=Check python version!
endef

define Package/test_package/description
	A simple C program to check Python version.
endef

define Build/Compile
	$(TARGET_CC) $(TARGET_CFLAGS) -o $(PKG_BUILD_DIR)/test_package $(PKG_BUILD_DIR)/check_python.c
endef

define Package/test_package/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/test_package $(1)/usr/bin/
endef

$(eval $(call BuildPackage,test_package))

