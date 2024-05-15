.PHONY: clean All

All:
	@echo "----------Building project:[ Challenge30 - Debug ]----------"
	@cd "Challenge30" && "$(MAKE)" -f  "Challenge30.mk"
clean:
	@echo "----------Cleaning project:[ Challenge30 - Debug ]----------"
	@cd "Challenge30" && "$(MAKE)" -f  "Challenge30.mk" clean
