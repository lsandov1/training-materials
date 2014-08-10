# Required packages (tested on Ubuntu 12.04):
# inkscape texlive-latex-base texlive-font-utils dia python-pygments

# Needed tools
INKSCAPE = inkscape
PDFLATEX = pdflatex
DIA      = dia
EPSTOPDF = epstopdf

# Needed macros
UPPERCASE = $(shell echo $1 | tr "[:lower:]" "[:upper:]")

# List of slides for the different courses

KERNEL_SLIDES = \
		licensing \
		about-us \
		course-information-title \
		beagleboneblack-board \
		kernel-shopping-list \
		course-information \
		setup-lab \
		kernel-introduction-title \
		sysdev-linux-intro-features \
		kernel-embedded-linux-usage-title \
		sysdev-linux-intro-sources \
		kernel-source-code-download-lab \
		kernel-source-code-title \
		kernel-source-code-drivers \
		kernel-source-code-layout \
		kernel-source-code-management \
		kernel-source-code-exploring-lab \
		sysdev-linux-intro-configuration \
		sysdev-linux-intro-compilation \
		sysdev-linux-intro-cross-compilation \
		kernel-board-setup-kernel-compiling-and-booting-labs \
		sysdev-linux-intro-modules \
		kernel-driver-development-modules \
		kernel-driver-development-lab-modules \
		kernel-driver-development-general-apis \
		kernel-device-model \
		kernel-i2c \
		kernel-pinmuxing \
		kernel-frameworks \
		kernel-input \
		kernel-driver-development-memory \
		kernel-driver-development-io-memory \
		kernel-driver-development-lab-io-memory \
		kernel-misc-subsystem \
		kernel-driver-development-processes \
		kernel-driver-development-sleeping \
		kernel-driver-development-interrupts \
		kernel-driver-development-lab-interrupts \
		kernel-driver-development-concurrency \
		kernel-driver-development-lab-locking \
		kernel-driver-development-debugging \
		kernel-driver-development-lab-debugging \
		kernel-porting-title \
		kernel-porting-content \
		kernel-power-management-title \
		kernel-power-management-content \
		kernel-development-process-title \
		sysdev-linux-intro-versioning \
		kernel-contribution \
		kernel-resources-title \
		kernel-resources-references \
		last-slides \
		kernel-backup-slides-title \
		kernel-driver-development-dma \
		kernel-driver-development-mmap \
		kernel-git-title \
		kernel-git-content \
		kernel-git-lab

SYSDEV_SLIDES = \
		licensing \
		about-us \
		course-information-title \
		igepv2-board \
		course-information \
		sysdev-intro \
		sysdev-dev-environment \
		setup-lab \
		sysdev-toolchains-title \
		sysdev-toolchains-definition \
		sysdev-toolchains-c-libraries-title \
		c-libraries \
		sysdev-toolchains-options \
		sysdev-toolchains-obtaining \
		sysdev-toolchains-lab \
		sysdev-bootloaders-title \
		sysdev-bootloaders-sequence \
		sysdev-bootloaders-u-boot \
		sysdev-bootloaders-lab \
		sysdev-linux-intro-title \
		sysdev-linux-intro-features \
		sysdev-linux-intro-versioning \
		sysdev-linux-intro-sources \
		sysdev-linux-tarballs-and-patches \
		sysdev-linux-intro-lab-sources \
		sysdev-linux-intro-configuration \
		sysdev-linux-intro-compilation \
		sysdev-linux-intro-cross-compilation \
		sysdev-linux-intro-lab-cross-compilation \
		sysdev-linux-intro-modules \
		sysdev-root-filesystem-title \
		sysdev-root-filesystem-principles \
		initramfs \
		sysdev-root-filesystem-contents \
		sysdev-root-filesystem-device-files \
		sysdev-root-filesystem-virtual-fs \
		sysdev-root-filesystem-minimal \
		boot-sequence-initramfs \
		sysdev-busybox \
		sysdev-block-filesystems \
		sysdev-flash-filesystems \
		sysdev-embedded-linux \
		sysdev-application-development \
		sysdev-realtime \
		sysdev-references \
		last-slides

ANDROID_SLIDES = \
		licensing \
		about-us \
		course-information-title \
		beagleboneblack-board \
		android-course-outline \
		course-information \
		setup-lab \
		android-introduction-title \
		android-introduction-features \
		android-introduction-history \
		android-introduction-architecture \
		android-introduction-hardware \
		android-introduction-lab \
		android-source-title \
		android-source-obtaining \
		android-source-organization \
		android-source-compilation \
		android-source-contribute \
		android-source-lab \
		sysdev-linux-intro-title \
		sysdev-linux-intro-features \
		sysdev-linux-intro-versioning \
		sysdev-linux-intro-configuration \
		sysdev-linux-intro-compilation \
		sysdev-linux-intro-cross-compilation \
		android-kernel-lab-compilation \
		android-kernel-changes-title \
		android-kernel-changes-wakelocks \
		android-kernel-changes-binder \
		android-kernel-changes-klogger \
		android-kernel-changes-ashmem \
		android-kernel-changes-timers \
		android-kernel-changes-lmk \
		android-kernel-changes-ion \
		android-kernel-changes-network \
		android-kernel-changes-misc \
		android-kernel-changes-mainline \
		android-bootloaders-title \
		sysdev-bootloaders-sequence \
		android-bootloaders-fastboot \
		android-build-system-basics-title \
		android-build-system-basics-basics \
		android-build-system-basics-envsetup \
		android-build-system-basics-configuration \
		android-build-system-basics-results \
		android-new-board-lab \
		android-adb-title \
		android-adb-introduction \
		android-adb-use \
		android-adb-examples \
		android-adb-lab \
		android-fs-title \
		sysdev-root-filesystem-principles \
		initramfs \
		android-fs-contents \
		sysdev-root-filesystem-device-files \
		sysdev-root-filesystem-minimal \
		android-build-system-advanced-title \
		android-build-system-advanced-modules \
		android-build-system-lab-library \
		android-build-system-lab-binary \
		android-build-system-advanced-product \
		android-build-system-lab-product \
		android-native-layer-title \
		sysdev-toolchains-definition \
		android-native-layer-bionic \
		android-native-layer-toolbox \
		android-native-layer-init \
		android-native-layer-daemons \
		android-native-layer-flingers \
		android-native-layer-stagefright \
		android-native-layer-dalvik \
		android-native-layer-hal \
		android-native-layer-jni \
		android-native-layer-lab-jni \
		android-framework-title \
		android-framework-native-services \
		android-framework-ipc \
		android-framework-java-services \
		android-framework-extend \
		android-framework-lab \
		android-application-title \
		android-application-basics \
		android-application-activities \
		android-application-services \
		android-application-providers \
		android-application-intents \
		android-application-processes \
		android-application-resources \
		android-application-storage \
		android-application-apk \
		android-application-lab \
		android-resources \
		last-slides

BOOTTIME_SLIDES = \
		licensing \
		thanks-atmel \
		about-us \
		course-information-title \
		sama5d3-board \
		boottime-course-outline \
		boottime-principles \
		boottime-measuring \
		boottime-filesystems \
		boottime-init-scripts \
		boottime-c-libraries-title \
		c-libraries \
		boottime-init-scripts2 \
		initramfs \
		boot-sequence-initramfs \
		boottime-init-scripts3 \
		boottime-application \
		boottime-kernel \
		boottime-bootloader \
		boottime-hardware-init \
		boottimealternatives \
		last-slides

TE5009_SLIDES = \
		te5009-partI-title \
		te5009-embedded-systems-landscape \
		te5009-embedded-systems-attributes \
		te5009-future-of-embedded-systems \
		te5009-partII-title \
		te5009-embedded-architecture-soc \
		te5009-embedded-architecture-memory \
		te5009-embedded-architecture-communication \
		te5009-embedded-architecture-pins \
		imx6-application-processors \
		te5009-imx6-boards \
		imx6-sabre-sdb \
		imx6-humming-board \
		te5009-partIII-title \
		te5009-toolchains-title \
		sysdev-toolchains-definition \
		sysdev-toolchains-c-libraries-title \
		c-libraries \
		sysdev-toolchains-options \
		sysdev-toolchains-obtaining \
		sysdev-toolchains-lab 
#\
#		imx6-platform-sdk \
#		imx6-platform-sdk-lab

# List of labs for the different courses

SYSDEV_LABS   = setup \
		sysdev-toolchain \
		sysdev-u-boot \
		sysdev-kernel-fetch-and-patch \
		sysdev-kernel-cross-compiling \
		sysdev-tinysystem \
		sysdev-block-filesystems \
		sysdev-flash-filesystems \
		sysdev-thirdparty \
		sysdev-buildroot \
		sysdev-application-development \
		sysdev-application-debugging \
		sysdev-real-time \
#		backup # Currently broken for sysdev course

KERNEL_LABS   = setup \
		kernel-sources-download \
		kernel-sources-exploring \
		kernel-board-setup \
		kernel-compiling-and-nfs-booting \
		kernel-module-simple \
		kernel-i2c-device-model \
		kernel-i2c-communication \
		kernel-i2c-input-interface \
		kernel-serial-iomem \
		kernel-serial-output \
		kernel-serial-interrupt \
		kernel-locking \
		kernel-debugging \
		kernel-git \
#		backup # Currently broken for kernel course

ANDROID_LABS  = setup \
		android-source-code \
		android-first-compilation \
		android-boot \
		android-new-board \
		android-adb \
		android-native-library \
		android-native-app \
		android-system-customization \
		android-jni-library \
		android-framework \
		android-application \

BOOTTIME_LABS = boottime-install \
		boottime-getting-started \
		boottime-measuring \
		boottime-setup \
		boottime-init-scripts \
		boottime-application \
		boottime-kernel \
		boottime-bootloader \
		boottime-results \

YOCTO_LABS    = setup \
		yocto-first-build \
		yocto-advanced-configuration \

# Output directory
OUTDIR   = $(PWD)/out

# Latex variable definitions
VARS = $(OUTDIR)/vars

# Environment for pdflatex, which allows it to find the stylesheet in the
# common/ directory.
PDFLATEX_ENV = TEXINPUTS=.:$(PWD)/common:

# Arguments passed to pdflatex
PDFLATEX_OPT = -shell-escape -file-line-error -halt-on-error

# The common slide stylesheet
STYLESHEET = common/beamerthemeITESM.sty

#
# === Picture lookup ===
#

# Function that computes the list of pictures of the extension given
# in $(2) from the directories in $(1), and transforms the filenames
# in .pdf in the output directory. This is used to compute the list of
# .pdf files that need to be generated from .dia or .svg files.
PICTURES_WITH_TRANSFORMATION = \
	$(patsubst %.$(2),$(OUTDIR)/%.pdf,$(foreach s,$(1),$(wildcard $(s)/*.$(2))))

# Function that computes the list of pictures of the extension given
# in $(2) from the directories in $(1). This is used for pictures that
# to not need any transformation, such as bitmap files in the .png or
# .jpg formats.
PICTURES_NO_TRANSFORMATION = \
	$(patsubst %,$(OUTDIR)/%,$(foreach s,$(1),$(wildcard $(s)/*.$(2))))

# Function that computes the list of pictures from the directories in
# $(1) and returns output filenames in the output directory.
PICTURES = \
	$(call PICTURES_WITH_TRANSFORMATION,$(1),svg) \
	$(call PICTURES_WITH_TRANSFORMATION,$(1),dia) \
	$(call PICTURES_NO_TRANSFORMATION,$(1),png)   \
	$(call PICTURES_NO_TRANSFORMATION,$(1),jpg)

# List of common pictures
COMMON_PICTURES   = $(call PICTURES,common)

default: help

#
# === Compilation of slides ===
#

# This rule allows to build slides of the training. It is done in two
# parts with make calling itself because it is not possible to compute
# a list of prerequisites depending on the target name. See
# http://stackoverflow.com/questions/3381497/dynamic-targets-in-makefiles
# for details.
#
# The value of slide can be "full-kernel", "full-sysdev" (for the
# complete trainings) or the name of an individual chapter.
ifdef SLIDES
# Compute the set of chapters to build depending on the name of the
# PDF file that was requested.
ifeq ($(firstword $(subst -, , $(SLIDES))),full)
SLIDES_TRAINING      = $(lastword $(subst -, , $(SLIDES)))
SLIDES_COMMON_BEFORE = common/slide-header.tex \
		       common/$(SLIDES_TRAINING)-title.tex
SLIDES_CHAPTERS      = $($(call UPPERCASE, $(SLIDES_TRAINING))_SLIDES)
SLIDES_COMMON_AFTER  = common/slide-footer.tex
else
SLIDES_TRAINING      = $(firstword $(subst -, ,  $(SLIDES)))
# We might be building multiple chapters that share a common
# prefix. In this case, we want to build them in the order they are
# listed in the <training>_SLIDES variable that corresponds to the
# current training, as identified by the first component of the
# chapter name.
SLIDES_CHAPTERS      = $(filter $(SLIDES)%, $($(call UPPERCASE, $(SLIDES_TRAINING))_SLIDES))
ifeq ($(words $(SLIDES_CHAPTERS)),1)
SLIDES_COMMON_BEFORE = common/slide-header.tex common/single-subsection-slide-title.tex
else
SLIDES_COMMON_BEFORE = common/slide-header.tex common/single-slide-title.tex
endif
SLIDES_COMMON_AFTER  = common/slide-footer.tex
endif

TRAINING = $(SLIDES_TRAINING)

ifeq ($(SLIDES_CHAPTERS),)
$(error "No chapter to build, maybe you're building a single chapter whose name doesn't start with a training session name")
endif

# Compute the set of corresponding .tex files and pictures
SLIDES_TEX      = \
	$(SLIDES_COMMON_BEFORE) \
	$(foreach s,$(SLIDES_CHAPTERS),$(wildcard slides/$(s)/$(s).tex)) \
	$(SLIDES_COMMON_AFTER)
SLIDES_PICTURES = $(call PICTURES,$(foreach s,$(SLIDES_CHAPTERS),slides/$(s))) $(COMMON_PICTURES)

%-slides.pdf: $(VARS) $(SLIDES_TEX) $(SLIDES_PICTURES) $(STYLESHEET)
	@echo $(SLIDES_CHAPTERS_NUM)
	@mkdir -p $(OUTDIR)
# We generate a .tex file with \input{} directives (instead of just
# concatenating all files) so that when there is an error, we are
# pointed at the right original file and the right line in that file.
	rm -f $(OUTDIR)/$(basename $@).tex
	echo "\input{$(VARS)}" >> $(OUTDIR)/$(basename $@).tex
	for f in $(filter %.tex,$^) ; do \
		echo -n "\input{../"          >> $(OUTDIR)/$(basename $@).tex ; \
		echo -n $$f | sed 's%\.tex%%' >> $(OUTDIR)/$(basename $@).tex ; \
		echo "}"                      >> $(OUTDIR)/$(basename $@).tex ; \
	done
	(cd $(OUTDIR); $(PDFLATEX_ENV) $(PDFLATEX) $(PDFLATEX_OPT) $(basename $@).tex)
# The second call to pdflatex is to be sure that we have a correct table of
# content and index
	(cd $(OUTDIR); $(PDFLATEX_ENV) $(PDFLATEX) $(PDFLATEX_OPT) $(basename $@).tex > /dev/null 2>&1)
# We use cat to overwrite the final destination file instead of mv, so
# that evince notices that the file has changed and automatically
# reloads it (which doesn't happen if we use mv here). This is called
# 'Maxime's feature'.
	cat out/$@ > $@
else
FORCE:
%-slides.pdf: FORCE
	@$(MAKE) $@ SLIDES=$*
endif

#
# === Compilation of labs ===
#

ifdef LABS
ifeq ($(firstword $(subst -, , $(LABS))),full)
LABS_TRAINING      = $(lastword $(subst -, , $(LABS)))
LABS_HEADER        = common/labs-header.tex
LABS_VARSFILE      = common/$(LABS_TRAINING)-labs-vars.tex
LABS_CHAPTERS      = $($(call UPPERCASE, $(LABS_TRAINING))_LABS)
LABS_FOOTER        = common/labs-footer.tex
else
LABS_TRAINING      = $(firstword $(subst -, , $(LABS)))
LABS_VARSFILE      = common/single-lab-vars.tex
LABS_CHAPTERS      = $(LABS)
LABS_HEADER        = common/single-lab-header.tex
LABS_FOOTER        = common/labs-footer.tex
endif

TRAINING           = $(LABS_TRAINING)

# Compute the set of corresponding .tex files and pictures
LABS_TEX      = \
	$(LABS_VARSFILE) \
	$(LABS_HEADER) \
	$(foreach s,$(LABS_CHAPTERS),$(wildcard labs/$(s)/$(s).tex)) \
	$(LABS_FOOTER)
LABS_PICTURES = $(call PICTURES,$(foreach s,$(LABS_CHAPTERS),labs/$(s))) $(COMMON_PICTURES)

%-labs.pdf: common/labs.sty $(VARS) $(LABS_TEX) $(LABS_PICTURES)
	@mkdir -p $(OUTDIR)
# We generate a .tex file with \input{} directives (instead of just
# concatenating all files) so that when there is an error, we are
# pointed at the right original file and the right line in that file.
	rm -f $(OUTDIR)/$(basename $@).tex
	echo "\input{$(VARS)}" >> $(OUTDIR)/$(basename $@).tex
	for f in $(filter %.tex,$^) ; do \
		echo -n "\input{../"          >> $(OUTDIR)/$(basename $@).tex ; \
		echo -n $$f | sed 's%\.tex%%' >> $(OUTDIR)/$(basename $@).tex ; \
		echo "}"                      >> $(OUTDIR)/$(basename $@).tex ; \
	done
	(cd $(OUTDIR); $(PDFLATEX_ENV) $(PDFLATEX) $(basename $@).tex)
# The second call to pdflatex is to be sure that we have a correct table of
# content and index
	(cd $(OUTDIR); $(PDFLATEX_ENV) $(PDFLATEX) $(basename $@).tex > /dev/null 2>&1)
# We use cat to overwrite the final destination file instead of mv, so
# that evince notices that the file has changed and automatically
# reloads it (which doesn't happen if we use mv here). This is called
# 'Maxime's feature'.
	cat out/$@ > $@
else
FORCE:
%-labs.pdf: FORCE
	@$(MAKE) $@ LABS=$*
endif

#
# === Compilation of agendas ===
#
ifdef AGENDA
AGENDA_TEX = agenda/$(AGENDA)-agenda.tex
AGENDA_PICTURES = $(COMMON_PICTURES) $(call PICTURES,agenda)

%-agenda.pdf: common/agenda.sty $(AGENDA_TEX) $(AGENDA_PICTURES)
	rm -f $(OUTDIR)/$(basename $@).tex
	cp $(filter %.tex,$^) $(OUTDIR)/$(basename $@).tex
	(cd $(OUTDIR); $(PDFLATEX_ENV) $(PDFLATEX) $(basename $@).tex)
	cat $(OUTDIR)/$@ > $@
else
FORCE:
%-agenda.pdf: FORCE
	@$(MAKE) $@ AGENDA=$*
endif

#
# === Picture generation ===
#

.PRECIOUS: $(OUTDIR)/%.pdf

$(OUTDIR)/%.pdf: %.svg
	@printf "%-15s%-20s->%20s\n" INKSCAPE $(notdir $^) $(notdir $@)
	@mkdir -p $(dir $@)
ifeq ($(V),)
	$(INKSCAPE) -D -A $@ $< > /dev/null 2>&1
else
	$(INKSCAPE) -D -A $@ $<
endif

$(OUTDIR)/%.pdf: $(OUTDIR)/%.eps
	@printf "%-15s%-20s->%20s\n" EPSTOPDF $(notdir $^) $(notdir $@)
	@mkdir -p $(dir $@)
	$(EPSTOPDF) --outfile=$@ $^

.PRECIOUS: $(OUTDIR)/%.eps

$(OUTDIR)/%.eps: %.dia
	@printf "%-15s%-20s->%20s\n" DIA $(notdir $^) $(notdir $@)
	@mkdir -p $(dir $@)
	$(DIA) -e $@ -t eps $^

.PRECIOUS: $(OUTDIR)/%.png

$(OUTDIR)/%.png: %.png
	@mkdir -p $(dir $@)
	@cp $^ $@

.PRECIOUS: $(OUTDIR)/%.jpg

$(OUTDIR)/%.jpg: %.jpg
	mkdir -p $(dir $@)
	@cp $^ $@

#
# === Misc targets ===
#

$(VARS): FORCE
	@mkdir -p $(dir $@)
	/bin/echo "\def \sessionurl {$(SESSION_URL)}" > $@
	/bin/echo "\def \training {$(TRAINING)}" >> $@

clean:
	$(RM) -rf $(OUTDIR) *.pdf

help:
	@echo "Available targets:"
	@echo
	@echo " full-sysdev-labs.pdf            Complete labs for the 'sysdev' course"
	@echo " full-kernel-labs.pdf            Complete labs for the 'kernel' course"
	@echo " full-android-labs.pdf           Complete labs for the 'android' course"
	@echo " full-boottime-labs.pdf          Complete labs for the 'boottime' course"
	@echo " full-sysdev-slides.pdf          Complete slides for the 'sysdev' course"
	@echo " full-kernel-slides.pdf          Complete slides for the 'kernel' course"
	@echo " full-android-slides.pdf         Complete slides for the 'android' course"
	@echo " full-boottime-slides.pdf        Complete slides for the 'boottime' course"
	@echo " full-te5009-slides.pdf          Complete slides for the 'te5009' course"
	@echo " android-agenda.pdf              Agenda for the 'android' course"
	@echo " boottime-agenda.pdf             Agenda for the 'boottime' course"
	@echo " buildroot-agenda.pdf            Agenda for the 'buildroot' course"
	@echo " kernel-agenda.pdf               Agenda for the 'kernel' course"
	@echo " yocto-agenda.pdf                Agenda for the 'yocto' course"
	@echo " te5009-agenda.pdf               Agenda for the 'te5009' course"
	@echo
	@echo " <some-chapter>-slides.pdf       Slides for a particular chapter in slides/"
	@echo " <some-chapter>-labs.pdf         Labs for a particular chapter in labs/"
	@echo
