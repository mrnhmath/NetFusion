/* -*- Mode: Java; tab-width: 2; indent-tabs-mode: nil; c-basic-offset: 2 -*- */
/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

function Startup()
{
  SysPrefCheck();
  ShellServiceCheck();
}

/**
 * System preferences
 */

function SysPrefCheck()
{
  const kPrefService = "@mozilla.org/system-preference-service;1";
  let visible = kPrefService in Components.classes &&
    Components.classes[kPrefService].getService() instanceof Components.interfaces.nsIPrefBranch;
  document.getElementById("systemPrefs").hidden = !visible;
}

function ShellServiceCheck()
{
  const NS_SHELLSERVICE_CID = "@mozilla.org/suite/shell-service;1";

  if (NS_SHELLSERVICE_CID in Components.classes) try {
    Components.classes[NS_SHELLSERVICE_CID]
              .getService(Components.interfaces.nsIShellService)
              .shouldCheckDefaultClient;
    document.getElementById("checkDefault").hidden = false;
  } catch (e) {
  }
}
