#############################################################################
##
##  PackageInfo.g for the package `GBNP'
##

SetPackageInfo( rec(

PackageName := "GBNP",
Subtitle := "computing Gröbner bases of noncommutative polynomials",
Version := "1.1.0",
Date := "29/08/2024", # dd/mm/yyyy format
License := "LGPL-2.1-or-later", # SPDX identifier

Persons := [
  rec(
    LastName      := "Cohen",
    FirstNames    := "A.M.",
    IsAuthor      := true,
    IsMaintainer  := false,
    Email         := "A.M.Cohen@tue.nl",
    Place         := "Eindhoven",
    Institution   := "Eindhoven University of Technology"
  ),
  rec(
    LastName      := "Knopper",
    FirstNames    := "J.W.",
    IsAuthor      := true,
    IsMaintainer  := false,
    Email         := "J.W.Knopper@tue.nl",
    Place         := "Eindhoven",
    Institution   := "Eindhoven University of Technology"
  ),
  rec(
    LastName      := "GAP Team",
    FirstNames    := "The",
    IsAuthor      := false,
    IsMaintainer  := true,
    Email         := "support@gap-system.org",
  ),
],

Status := "accepted",
CommunicatedBy := "Alexander Hulpke (Fort Collins, CO)",
AcceptDate := "05/2010",

PackageWWWHome  := "https://gap-packages.github.io/gbnp/",
README_URL      := Concatenation( ~.PackageWWWHome, "README.md" ),
PackageInfoURL  := Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),
SourceRepository := rec(
    Type := "git",
    URL := "https://github.com/gap-packages/gbnp",
),
IssueTrackerURL := Concatenation( ~.SourceRepository.URL, "/issues" ),
ArchiveURL      := Concatenation( ~.SourceRepository.URL,
                                 "/releases/download/v", ~.Version,
                                 "/gbnp-", ~.Version ),
ArchiveFormats := ".tar.gz",

AbstractHTML :=
  "The <span class=\"pkgname\">GBNP</span> package provides algorithms for \
   computing Gröbner bases of noncommutative polynomials with coefficients \
   from a field implemented in <span class=\"pkgname\">GAP</span> and with \
   respect to the \"total degree first then lexicographical\" ordering. \
   Further provided are some variations, such as a weighted and truncated \
   version and a tracing facility. The word \"algorithm\" is to be \
   interpreted loosely here: in general one cannot expect such an algorithm \
   to terminate, as it would imply solvability of the word problem for \
   finitely presented (semi)groups.",

PackageDoc := rec(
  BookName  := "GBNP",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0_mj.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "Non-commutative Gröbner bases",
),

Dependencies := rec(
  GAP := ">=4.8",
  NeededOtherPackages := [["GAPDoc", ">= 1.5"]],
  SuggestedOtherPackages := [],
  ExternalConditions := [],
),

AvailabilityTest := ReturnTrue,

TestFile := "tst/testall.g",

Keywords := ["Grobner basis", "noncommutative polynomial", "partial Hilbert series"],

AutoDoc := rec(
    entities := rec( VERSION := ~.Version ),
    TitlePage := rec(
        Address := "TU/e,<Br/> POB 513, 5600 MB Eindhoven, the Netherlands",
        Copyright := """
&copyright; 2001-2010 by Arjeh M. Cohen, Dié A.H. Gijsbers, Jan Willem
Knopper, Chris Krook. Address: Discrete Algebra and Geometry (DAM) group
at the Department of Mathematics and Computer Science of Eindhoven
University of Technology.
""",
        Abstract := """
We provide algorithms, written in the <Package>GAP</Package> 4 programming
language, for computing Gröbner bases of non-commutative polynomials, and some
variations, such as a weighted and truncated version and a tracing facility.
In addition, there are algorithms for analyzing the quotient of a
non-commutative polynomial algebra by a 2-sided ideal generated by a set of
polynomials whose Gröbner basis has been determined and for computing quotient
modules of free modules over quotient algebras.
<P/>
The notion of algorithm is interpreted loosely: in general one cannot expect a
non-commutative Gröbner basis algorithm to terminate, as it would imply
solvability of the word problem for finitely presented (semi)groups.
<P/>
This documentation gives a short description of the mathematical content,
explains the functions of the package, and provides more than twenty worked
out examples.
""",
        Acknowledgements := """
<List>
<Item>The package is based on an earlier version by Rosane Ushirobira.</Item>
<Item>The bulk of the package is written by Arjeh M. Cohen and Dié A.H. Gijsbers.</Item>
<Item>The theory is mainly taken from literature by Teo Mora <Cite Key="TCS::Mora1994:131"/>
    and Edward L. Green <Cite Key="Green1997"/>.</Item>
<Item>From Version 0.8.3 on the package has three additional files
    (<File>fincheck.g</File>, <File>tree.g</File> <File>graphs.g</File>) with
    routines for finding the Hilbert function and testing finite dimensionality
    when given a Gröbner basis by Chris Krook <Cite Key="Krook2003"/>, based on
    work by Victor Ufnarovski <Cite Key="MR91d:16053"/>.</Item>
<Item>From Version 0.9 on the package is enriched with support for fields
    implemented in GAP and additional prefix rules for quotient modules, as
    well as some speed improvements by Jan Willem Knopper. Knopper has also
    formatted the documentation in GAPDoc <Cite Key="GAPDoc"/>. </Item>
<Item>From Version 1.0 on the package is extended with NMO (for Noncommutative
    Monomial Orderings) by Randall Cone. This enables the GBNP user to choose
    a wider selection of monomial orderings than the standard one built into
    GBNP itself. Documentation on NMO can be found in the NMO manual <Cite
    Key="NMODoc"/>. </Item>
</List>
""",
)),

));
