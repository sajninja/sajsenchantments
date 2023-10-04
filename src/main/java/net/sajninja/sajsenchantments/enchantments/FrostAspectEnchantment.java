package net.sajninja.sajsenchantments.enchantments;

import net.minecraft.tags.EntityTypeTags;
import net.minecraft.world.damagesource.DamageType;
import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.world.entity.*;
import net.minecraft.world.item.enchantment.DamageEnchantment;
import net.minecraft.world.item.enchantment.Enchantment;
import net.minecraft.world.item.enchantment.EnchantmentCategory;
import net.minecraft.world.item.enchantment.Enchantments;
import net.minecraft.world.level.levelgen.feature.SnowAndFreezeFeature;

public class FrostAspectEnchantment extends Enchantment {

    protected FrostAspectEnchantment(Rarity rarity, EnchantmentCategory category, EquipmentSlot... slot) {
        super(rarity, category, slot);
    }

    public int getMinCost(int p_45000_) {
        return 10 + 20 * (p_45000_ - 1);
    }

    public int getMaxCost(int p_45002_) {
        return super.getMinCost(p_45002_) + 50;
    }

    public int getMaxLevel() {
        return 2;
    }

    @Override
    protected boolean checkCompatibility(Enchantment enchantment) {
        if (enchantment == Enchantments.FIRE_ASPECT) {
            return false;
        }
        return super.checkCompatibility(enchantment);
    }

    @Override
    public void doPostAttack(LivingEntity player, Entity target, int i) {
        if (target instanceof LivingEntity livingEntity) {
            int j = 800 + player.getRandom().nextInt(400 * i);
            livingEntity.setTicksFrozen((j));
        }
        super.doPostAttack(player, target, i);
    }
}