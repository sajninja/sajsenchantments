package net.sajninja.sajsenchantments.enchantments;

import net.minecraft.world.entity.Entity;
import net.minecraft.world.entity.EquipmentSlot;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.item.enchantment.*;

public class SoulBrandEnchantment extends Enchantment {

    protected SoulBrandEnchantment(Rarity rarity, EnchantmentCategory category, EquipmentSlot... slot) {
        super(rarity, category, slot);
    }

    public int getMinCost(int p_45000_) {
        return 10 + 20 * (p_45000_ - 1);
    }

    public int getMaxCost(int p_45002_) {
        return super.getMinCost(p_45002_) + 50;
    }

    public int getMaxLevel() {
        return 3;
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

    @Override
    protected boolean checkCompatibility(Enchantment enchantment) {
        if (enchantment instanceof FireAspectEnchantment || enchantment instanceof FrostAspectEnchantment) {
            return false;
        }
        return super.checkCompatibility(enchantment);
    }

    public void doPostAttack(LivingEntity player, Entity target, int i) {
        if (target instanceof LivingEntity livingEntity) {
            String j = "soul_brand_init";
            livingEntity.addTag(j);

        }
        super.doPostAttack(player, target, i);
    }

}