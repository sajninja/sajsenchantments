package net.sajninja.sajsenchantments.enchantments;

import net.minecraft.core.BlockPos;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.world.entity.*;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.enchantment.Enchantment;
import net.minecraft.world.item.enchantment.EnchantmentCategory;

public class DevotionEnchantment extends Enchantment {
    public DevotionEnchantment(Enchantment.Rarity p_45098_, EquipmentSlot... p_45099_) {
        super(p_45098_, EnchantmentCategory.BREAKABLE, p_45099_);
    }

    public int getMinCost(int p_45102_) {
        return p_45102_ * 25;
    }

    public int getMaxCost(int p_45105_) {
        return this.getMinCost(p_45105_) + 50;
    }

    public boolean isTreasureOnly() {
        return true;
    }

    public boolean isTradeable() {
        return false;
    }

    public boolean isDiscoverable() {
        return false;
    }

    public int getMaxLevel() {
        return 3;
    }
}