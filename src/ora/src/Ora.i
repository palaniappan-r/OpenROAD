// Copyright (c) 2025, The Regents of the University of California
// All rights reserved.
// 
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

%module ora

%{

#include "ora/Ora.hh"
#include "ord/OpenRoad.hh"

ora::Ora *getOra()
{
  return ord::OpenRoad::openRoad()->getOra();
}

%}

%inline %{

// void ora_set_param1(double param1)
// {
//   getOra()->setParam1(param1);
// }

void askbot(const char *query)
{
  getOra()->askbot(query);
}

void askbot_listSources(bool listSources)
{
  getOra()->setSourceFlag(listSources);
}

void set_bothost(const char *host)
{
  getOra()->setBotHost(host);
}

void set_consent(const char *consent)
{
  getOra()->setConsent(consent);
}

void set_mode(const char *mode)
{
  getOra()->setMode(mode);
}

%} // inline
