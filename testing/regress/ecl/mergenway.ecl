/*##############################################################################

    HPCC SYSTEMS software Copyright (C) 2012 HPCC Systems.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
############################################################################## */

//class=file
//class=index
//nothor
//version multiPart=false
//version multiPart=true

import ^ as root;
multiPart := #IFDEFINED(root.multiPart, true);
useLocal := #IFDEFINED(root.useLocal, false);
useTranslation := #IFDEFINED(root.useTranslation, false);

//--- end of version configuration ---

import $.setup;
import setup.TS;
Files := setup.Files(multiPart, useLocal, useTranslation);

boy := STEPPED(Files.getWordIndex()(keyed(kind = TS.kindType.TextEntry and word = 'boy')), doc);
sheep := STEPPED(Files.getWordIndex()(keyed(kind = TS.kindType.TextEntry and word = 'sheep')), doc);
both := MERGE([boy, sheep], SORTED(kind, word, doc));

output(both);
