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

#option ('targetClusterType', 'roxie');

namesRecord :=
            RECORD
string20        a;
string10        b;
integer2        c;
integer2        d;
            END;

namesTable := dataset('x', namesRecord, thor);

s1 := sort(namesTable, a, b, c);
s2 := subsort(s1, {a,b}, {d}, local);
s3 := sorted(s2, {a,b,d}, assert);
output(s3);
