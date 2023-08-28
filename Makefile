JAVAC=javac
JAVA=java

SRCDIR=src
BINDIR=bin
PKGDIR_BIN=$(BINDIR)/clubSimulation
PKGDIR_SRC=$(SRCDIR)/clubSimulation

SOURCES=$(PKGDIR_SRC)/CounterDisplay.java \
          $(PKGDIR_SRC)/GridBlock.java \
          $(PKGDIR_SRC)/PeopleCounter.java \
          $(PKGDIR_SRC)/ClubGrid.java \
          $(PKGDIR_SRC)/PeopleLocation.java \
          $(PKGDIR_SRC)/ClubView.java \
          $(PKGDIR_SRC)/Clubgoer.java \
          $(PKGDIR_SRC)/ClubSimulation.java \

CLASSES=$(patsubst $(SRCDIR)/%.java,$(BINDIR)/%.class,$(SOURCES))

JFLAGS=-d $(BINDIR) -sourcepath $(SRCDIR) -classpath $(BINDIR)

all: $(CLASSES)

$(BINDIR)/%.class: $(SRCDIR)/%.java
	$(JAVAC) $(JFLAGS) $<

clean:
	rm $(PKGDIR_BIN)/*.class

run:
	$(JAVA) -cp $(BINDIR) clubSimulation.ClubSimulation $(ARGS)