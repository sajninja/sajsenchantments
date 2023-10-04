package net.sajninja.sajsenchantments.enchantments;

import net.minecraft.world.InteractionHand;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.entity.EquipmentSlot;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.MobType;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.Items;
import net.minecraft.world.item.enchantment.Enchantment;
import net.minecraft.world.item.enchantment.EnchantmentCategory;
import net.minecraft.world.item.enchantment.Enchantments;
import net.minecraft.world.scores.Scoreboard;

import java.util.stream.Stream;

public class RepeatingEnchantment extends Enchantment {
    protected RepeatingEnchantment(Rarity rarity, EnchantmentCategory category, EquipmentSlot... slot) {
        super(rarity, category, slot);
    }

    @Override
    protected boolean checkCompatibility(Enchantment enchantment) {
        if (enchantment == Enchantments.PIERCING || enchantment == Enchantments.MULTISHOT) {
            return false;
        }
        return super.checkCompatibility(enchantment);
    }

    @Override
    public int getMaxLevel() {
        return 4;
    }

}