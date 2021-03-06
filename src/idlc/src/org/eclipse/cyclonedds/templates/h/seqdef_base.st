// Copyright(c) 2006 to 2018 ADLINK Technology Limited and others
//
// This program and the accompanying materials are made available under the
// terms of the Eclipse Public License v. 2.0 which is available at
// http://www.eclipse.org/legal/epl-2.0, or the Eclipse Distribution License
// v. 1.0 which is available at
// http://www.eclipse.org/org/documents/edl-v10.php.
//
// SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause

seqdef_base (name, scope, type, arraydim, str_size) ::= <<
typedef struct <scopedname(...)>
{
  uint32_t _maximum;
  uint32_t _length;
  <type> (*_buffer)<str_size><arraydim>;
  bool _release;
} <scopedname(...)>;

<allocs(...)>

#define <scopedname(...)>_allocbuf(l) \
((<type> (*)<str_size><arraydim>) dds_alloc ((l) * sizeof (<type><str_size><arraydim>)))

>>
