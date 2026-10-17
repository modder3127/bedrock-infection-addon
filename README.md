# Bedrock Infection Add-on

This repository contains a scaffold for a Minecraft Bedrock add-on that adds an "infected pig" which can infect players, applying Blindness for 10 seconds. It also includes a craftable Antidote item and an in-game Field Report lore item.

Repository metadata / lore (also included in behavior pack manifest):

- Title: The Parasite Project
- Creator: modder3127
- First recorded outbreak: 2026-10-17
- Short description: The parasite adapted from livestock to humans, causing temporary blindness and disorientation. An antidote was developed.

What is included (scaffold):

- behavior_pack/manifest.json
- behavior_pack/entities/infected_pig.entity.json
- behavior_pack/items/antidote.item.json
- behavior_pack/recipes/antidote.recipe.json
- behavior_pack/loot_tables/entities/infected_pig.loot.json
- resource_pack/manifest.json
- resource_pack/textures/... (placeholder files) 
- generate_mcaddon.sh — helper script to create a .mcaddon by zipping the two packs.

Notes and compatibility
- This scaffold is JSON-only (no scripting). That makes it broadly compatible across Bedrock devices (Windows, mobile, consoles). Some behaviors (complex contagion rules) would require scripting and Experimental Gameplay.
- The JSON provided is a best-effort scaffold. You should replace the placeholder textures with real PNGs in resource_pack/textures/ and confirm the entity components/events match the target Bedrock version if you edit.
- The entity currently attempts to run commands to apply the blindness effect on nearby players when it attacks. On some platform versions, command-based events may require enabling cheats or Experimental Gameplay.

How to create a .mcaddon (single-file install)
1. Clone the repo and open a terminal in the repo root.
2. Replace the placeholder PNGs in resource_pack/textures/ with actual PNG texture files.
3. Make the helper script executable: chmod +x generate_mcaddon.sh
4. Run: ./generate_mcaddon.sh
5. The script produces bedrock_infection.mcaddon. Double-click/open it on a device with Minecraft Bedrock to import both packs.

Install & test in Minecraft (Windows example)
1. Import the .mcaddon by double-clicking it or dropping it in %LOCALAPPDATA%\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\development_behavior_packs (paths vary by platform).
2. Create a new world and enable the Behavior Pack and Resource Pack under Add-ons.
3. (Optional) Enable Experimental Gameplay if you change experimental components.
4. Spawn an infected pig with command: /summon mod:infected_pig ~ ~ ~
5. Let the pig attack you — it should apply Blindness for 10s. Use the Antidote to clear effects.

License
- MIT. See LICENSE in repo.
